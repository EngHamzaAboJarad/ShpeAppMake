import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:shopemakeup/FirebaseController/FirestoreController.dart';
import 'package:shopemakeup/Provider/auth_block/provider_auth.dart';
import 'package:shopemakeup/sharedPreferences/StooregSharedAuth.dart';
import 'package:shopemakeup/utils/Helper.dart';

class RegisterController with Helper {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  UserCredential? F;

  Future<void> CreateAccount(
      {required BuildContext context,
      required String email,
      required String password,
        required String phone,
        required String name,

      }) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(
          email: email, password: password,
      ).then((value) {
          FirestoreController().InsertUserInformationIntoFirebase({
            'email':value.user!.email.toString(),
            'phone':phone,
            'name':name,
            'password':password,
            'provider':'Email',
            'image':''
          });
          return value;
      });
      F = userCredential;
      bool emailveri = CheckVerificationEmail(userCredential);
      if (emailveri == false) {
        userCredential.user!.sendEmailVerification;
      }
      SignOut();
      ShowSnackBar(
          context: context, Message: '🥰 تم إنشاء الحساب نجاح 🥰', Error: true);
      Navigator.popAndPushNamed(
          context, 'Login_Screen');
    } on FirebaseAuthException catch (e) {
      CheckError(context, e);
    }
  }

  Future<void> SignOut() async {
    await _firebaseAuth.signOut();
  }

  Future<UserCredential?> LogInWithEmailAndPassword({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    try {
        UserCredential loginusers = await _firebaseAuth
           .signInWithEmailAndPassword(email: email, password: password);
         await storegAuthShared().SaveDataUsersFrom(
              email:loginusers.user!.email,
             );
        return loginusers;
    } on FirebaseAuthException catch (Elogin) {
      CheckErrorLogin(context, Elogin);
    }
  }

  Future<void> ForgetPassword(
      {required BuildContext context,
      required String email,
      required String newPassword}) async {
    try {
      F!.user!.updatePassword(newPassword);
    } on FirebaseAuthException catch (F) {}
  }

  bool CheckVerificationEmail(UserCredential user) {
    if (!user.user!.emailVerified) {
      return false;
    } else {
      return true;
    }
  }

  void CheckError(BuildContext context, FirebaseAuthException e) {
    if (e.code == 'weak-password') {
      ShowSnackBar(
          context: context, Message: '😢كلمة السر ضعيفة😢', Error: false);
      Navigator.popAndPushNamed(
          context, 'SingUp_Screen');
      Provider.of<ProviderAuth>(context,listen: false).setEnabledTextFields(true);
    } else if (e.code == 'invalid-email') {
      ShowSnackBar(
          context: context,
          Message: '😢البريد الإلكتروني غير منطقي😢',
          Error: false);
      Navigator.popAndPushNamed(
          context, 'SingUp_Screen');
      Provider.of<ProviderAuth>(context,listen: false).setEnabledTextFields(true);
    } else if (e.code == 'email-already-in-use') {
      ShowSnackBar(
          context: context,
          Message: '😢البريد الإلكتروني مستعمل من قبل😢',
          Error: false);
      Navigator.popAndPushNamed(
          context, 'SingUp_Screen');
      Provider.of<ProviderAuth>(context,listen: false).setEnabledTextFields(true);
    }
  }

  void CheckErrorLogin(BuildContext context, FirebaseException e) {
    if (e.code == 'wrong-password') {
      ShowSnackBar(
          context: context, Message: '😢كلمة السر غير صحيحة😢', Error: false);
      Navigator.popAndPushNamed(
          context, 'SingUp_Screen');
      Provider.of<ProviderAuth>(context,listen: false).setEnabledTextFields(true);
    } else if (e.code == 'user-not-found') {
      ShowSnackBar(
          context: context,
          Message: '😢البريد الإلكتروني غير موجود😢',
          Error: false);
      Navigator.popAndPushNamed(
          context, 'SingUp_Screen');
      Provider.of<ProviderAuth>(context,listen: false).setEnabledTextFields(true);
    } else if (e.code == 'user-disabled') {
      ShowSnackBar(
          context: context,
          Message: '😢البريد الإلكتروني غير مفعل😢',
          Error: false);
      Navigator.popAndPushNamed(
          context, 'SingUp_Screen');
      Provider.of<ProviderAuth>(context,listen: false).setEnabledTextFields(true);
    } else if (e.code == 'invalid-email') {
      ShowSnackBar(
          context: context,
          Message: '😢البريد الإلكتروني غير منطقي😢',
          Error: false);
      Navigator.popAndPushNamed(
          context, 'SingUp_Screen');
      Provider.of<ProviderAuth>(context,listen: false).setEnabledTextFields(true);
    }
  }

//  SignInWithGOOGLE
   Future<UserCredential>LoginWithGoogleAccount()async{
     var users = await GoogleSignIn().signIn();
     var auth  = await users?.authentication;
     var userCredential = GoogleAuthProvider.credential(
       idToken: auth?.idToken,
       accessToken: auth?.accessToken
     );
     var u =await _firebaseAuth.signInWithCredential(userCredential);
     await storegAuthShared().SaveDataUsersFrom(
         email:u.user!.email,
         );
    return u;
   }
}
