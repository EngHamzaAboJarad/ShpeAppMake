import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopemakeup/FirebaseController/FirestoreController.dart';
import 'package:shopemakeup/FirebaseController/RegisterController.dart';
import 'package:shopemakeup/sharedPreferences/StooregSharedAuth.dart';
import 'package:shopemakeup/utils/Helper.dart';
  // shopemakeup
class ProviderAuth extends ChangeNotifier with Helper {
  //Start Screens SignUp Controller TextField//
  TextEditingController EmailAdderss = TextEditingController();
  TextEditingController Password = TextEditingController();
  TextEditingController FullName = TextEditingController();
  TextEditingController PhoneNumber = TextEditingController();
  //End Screens SignUp Controller TextField//


  //EmailAdderss,Password,FullName,PhoneNumberمستخدمين في انشاء حساب
  // String? ErrorEmail,ErrorName,ErrorPassword,ErrorPhone;
  TextEditingController EmailLogin = TextEditingController();
  TextEditingController PasswordLogin = TextEditingController();
  TextEditingController ChangePhoneNumberController = TextEditingController();

  TextEditingController NewPasswordController = TextEditingController();
  TextEditingController RepeatNewPasswordController = TextEditingController();
  TextEditingController SearchController = TextEditingController();
  TextEditingController AddressOne = TextEditingController();
  TextEditingController AddressTow = TextEditingController();

  bool enabledTextFields = true;
  void setEnabledTextFields(bool v) {
    this.enabledTextFields = v;
    notifyListeners();
  }
  bool visibilitys_obscureText = true;
  void setVisibility_obscureText(bool v) {
    this.visibilitys_obscureText = v;
    notifyListeners();
  }
  bool visibilitys_singup_obscureText = true;
  void setVisibilitysingup_obscureText(bool v) {
    this.visibilitys_singup_obscureText = v;
    notifyListeners();
  }
  //PasswordSetting
  //CurrentPasswordController
  bool visibilitys_Password1_obscureText = true;
  void setVisibilityPassword1_obscureText(bool v) {
    this.visibilitys_Password1_obscureText = v;
    notifyListeners();
  }
  //NewPasswordController
  bool visibilitys_Password2_obscureText = true;
  void setVisibilityPassword2_obscureText(bool v) {
    this.visibilitys_Password2_obscureText = v;
    notifyListeners();
  }
  //RepeatNewPasswordController
  bool visibilitys_Password3_obscureText = true;
  void setVisibilityPassword3_obscureText(bool v) {
    this.visibilitys_Password3_obscureText = v;
    notifyListeners();
  }
  //PhoneNumberSetting
  String ChangePhoneNumber = '';
  void SetChangePhoneNumber(String newPhone) {
    ChangePhoneNumber = newPhone;
    notifyListeners();
  }
  /*##################################AuthOperations########################################*/
  Future<void> CreateAccount({required BuildContext context,
    required String fullName,required String Phone,
    required String email,required String password
  }) async {
    if(CheckPhoneNumber(Phone, context)){
      if (password.length <= 13 && fullName.isNotEmpty && email.isNotEmpty &&
          Phone.isNotEmpty && password.isNotEmpty) {
        await RegisterController().CreateAccount(context: context,
          email: email,
          password: password,
          name: fullName,
          phone: Phone,);
      }
    }
     else if (fullName.isEmpty || Phone.isEmpty || email.isEmpty ||
        password.isEmpty) {
      ShowSnackBar(
          context: context,
          Message: '😏 تأكد من الحقول 😏',
          Error: false);
      Navigator.popAndPushNamed(
          context, 'SingUp_Screen');
      Provider.of<ProviderAuth>(context, listen: false).setEnabledTextFields(
          true);
    }
    notifyListeners();
  }
  void Login({required BuildContext context}) {
    if (EmailLogin.text.isNotEmpty && PasswordLogin.text.isNotEmpty) {
      RegisterController().LogInWithEmailAndPassword(
          context: context,email: EmailLogin.text,password: PasswordLogin.text)
          .then((value) async{
        await FirestoreController().InsertUserInformationIntoFirebase({
          'email': value!.user!.email.toString(),
          'phone': value.user!.phoneNumber.toString(),
          'name':  value.user!.displayName.toString(),
          'password': PasswordLogin.text.toString(),
          'Token': value.user!.refreshToken,
          'provider': 'Google'.toString(),
          'image': value.user!.photoURL.toString()
        }).then((value) {
          Navigator.popAndPushNamed(context, '/');
          EmailLogin.text = '';
          PasswordLogin.text = '';
        });
       });
      notifyListeners();
    } else {
      ShowSnackBar(
          context: context,
          Message: '😏 الحقول فارغة 😏',
          Error: false);
    }
  }
  void Logout() {
    RegisterController().SignOut();
    storegAuthShared().Clear();
    notifyListeners();
  }
  void ForgetPass(context) {
    if (RepeatNewPasswordController.text != NewPasswordController.text) {
      ShowSnackBar(
          context: context, Message: '😢كلمة السر غير متطابقة😢', Error: false);
    } else {
      RegisterController().ForgetPassword(
          context: context,
          email: EmailAdderss.text,
          newPassword: NewPasswordController.text);
    }
  }
  void SignInWithGoogle(context) {
    RegisterController().LoginWithGoogleAccount().then((value) async {
      await FirestoreController().InsertUserInformationIntoFirebase({
        'email': value.user!.email.toString(),
        'phone': value.user!.phoneNumber.toString(),
        'name': value.user!.displayName.toString(),
        'password': ''.toString(),
        'Token': value.user!.refreshToken,
        'provider': 'Google'.toString(),
        'image': value.user!.photoURL.toString()
      }).then((value) => Navigator.popAndPushNamed(context, '/'));
    });
    notifyListeners();
  }
  void SignInWithFaceBook(context) {
    RegisterController().LoginWithFaceBook().then((value) async {
      await FirestoreController().InsertUserInformationIntoFirebase({
        'email': value.user!.email.toString(),
        'phone': value.user!.phoneNumber.toString(),
        'name': value.user!.displayName.toString(),
        'password': ''.toString(),
        'Token': value.user!.refreshToken,
        'provider': 'FaceBook'.toString(),
        'image': value.user!.photoURL.toString()
      }).then((value) => Navigator.popAndPushNamed(context, '/'));
    });
    notifyListeners();
  }
  /// MessageErrorsPhoneNumbers
  bool CheckPhoneNumber(String phone, context) {
    if (phone.length > 13) {
      ShowSnackBar(
          context: context,
          Message: '😏 وقف يخو الشيقل الرقم هاد رقم حرامية😏',
          Error: false);
      Navigator.popAndPushNamed(
          context, 'SingUp_Screen');
      Provider.of<ProviderAuth>(context, listen: false).setEnabledTextFields(
          true);
      notifyListeners();
      return false;
    } else if (phone[0] != '0' && phone[1] != '5' && (phone[2] != '6' ||
        phone[2] != '9') && phone.isEmpty) {
      ShowSnackBar(
          context: context,
          Message: '😏 أعترف من أي دولة انتا 😏',
          Error: false);
      Navigator.popAndPushNamed(
          context, 'SingUp_Screen');
      Provider.of<ProviderAuth>(context, listen: false).setEnabledTextFields(
          true);
      notifyListeners();
      return false;
    } else {
      return true;
    }
  }
}
