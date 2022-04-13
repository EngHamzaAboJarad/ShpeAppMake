import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shopemakeup/utils/Helper.dart';

class RegisterController with Helper {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<void> CreateAccount({required BuildContext context,
    required String email,
    required String password}) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      bool emailveri = CheckVerificationEmail(userCredential);
      if (emailveri == false) {
        userCredential.user!.emailVerified;
      }
      SignOut();
      ShowSnackBar(context: context,
          Message: '🥰 تم إنشاء الحساب نجاح 🥰', Error: true);
    } on FirebaseAuthException catch (e) {
      CheckError(context, e);
    }
  }

  Future<void> SignOut() async {
    await _firebaseAuth.signOut();
  }

  Future<void> LogInWithEmailAndPassword({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    try {
      UserCredential loginusers = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (Elogin) {
      CheckErrorLogin(context, Elogin);
    }
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
      ShowSnackBar(context: context,
          Message: '😢كلمة السر ضعيفة😢',
          Error: false);
    } else if (e.code == 'invalid-email') {
      ShowSnackBar(context: context,
          Message: '😢البريد الإلكتروني غير منطقي😢',
          Error: false);
    } else if (e.code == 'email-already-in-use') {
      ShowSnackBar(context: context,
          Message: '😢البريد الإلكتروني مستعمل من قبل😢',
          Error: false);
    }
  }

  void CheckErrorLogin(BuildContext context, FirebaseException e) {
    if (e.code == 'wrong-password') {
      ShowSnackBar(context: context,
          Message: '😢كلمة السر غير صحيحة😢',
          Error: false);
    } else if (e.code == 'user-not-found') {
      ShowSnackBar(context: context,
          Message: '😢البريد الإلكتروني غير موجود😢',
          Error: false);
    } else if (e.code == 'user-disabled') {
      ShowSnackBar(context: context,
          Message: '😢البريد الإلكتروني غير مفعل😢',
          Error: false);
    } else if (e.code == 'invalid-email') {
      ShowSnackBar(context: context,
          Message: '😢البريد الإلكتروني غير منطقي😢',
          Error: false);
    }
  }
}
