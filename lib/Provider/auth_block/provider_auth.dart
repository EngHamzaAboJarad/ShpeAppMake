import 'package:flutter/material.dart';
import 'package:shopemakeup/FirebaseController/FirestoreController.dart';
import 'package:shopemakeup/FirebaseController/RegisterController.dart';
import 'package:shopemakeup/sharedPreferences/StooregSharedAuth.dart';
import 'package:shopemakeup/utils/Helper.dart';
  // shopemakeup
class ProviderAuth extends ChangeNotifier with Helper {
  TextEditingController EmailAdderss = TextEditingController();
  TextEditingController Password = TextEditingController();
  TextEditingController FullName = TextEditingController();
  TextEditingController PhoneNumber = TextEditingController();

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
  void CreateAccount({required BuildContext context}) {
    if (PhoneNumber.text.length <= 13 && FullName.text.isNotEmpty && EmailAdderss.text.isNotEmpty && PhoneNumber.text.isNotEmpty && Password.text.isNotEmpty && PhoneNumber.text[0] == '0' && PhoneNumber.text[1] == '5' && (PhoneNumber.text[2] == '6' || PhoneNumber.text[2] == '9')) {
      RegisterController()
          .CreateAccount(
          context: context,
          email: EmailAdderss.text,
          password: Password.text,
           name: FullName.text,
          phone:  PhoneNumber.text,
       )
      .then((value) {
        FullName.text = '';
        PhoneNumber.text = '';
        EmailAdderss.text = '';
        Password.text = '';
      });
    } else if (PhoneNumber.text.length > 13) {
      ShowSnackBar(
          context: context,
          Message: '😏 وقف يخو الشيقل الرقم هاد رقم حرامية😏',
          Error: false);
    } else if (PhoneNumber.text[0] != '0' ||
        PhoneNumber.text[1] != '5' ||
        PhoneNumber.text[2] != '6' ||
        PhoneNumber.text[2] != '9') {
      ShowSnackBar(
          context: context,
          Message: '😏 أعترف من أي دولة انتا 😏',
          Error: false);
    } else {
      ShowSnackBar(
          context: context, Message: '😢 تأكد من الحقول 😢', Error: false);
    }
    notifyListeners();
  }
  void Login({required BuildContext context}) {
    if(EmailLogin.text.isNotEmpty&&PasswordLogin.text.isNotEmpty){
      RegisterController()
          .LogInWithEmailAndPassword(
          context: context,
          email: EmailLogin.text,
          password: PasswordLogin.text)
          .then((value) {
        EmailLogin.text = '';
        PasswordLogin.text = '';
        Navigator.pushReplacementNamed(context, '/');
      });
      notifyListeners();
    }else{
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
    if(RepeatNewPasswordController.text!=NewPasswordController.text){
      ShowSnackBar(context: context, Message: '😢كلمة السر غير متطابقة😢', Error: false);
    }else{
      RegisterController().ForgetPassword(
          context: context,
          email: EmailAdderss.text,
          newPassword: NewPasswordController.text);
    }
  }
  void SignInWithGoogle(context){
    RegisterController().LoginWithGoogleAccount().then((value)async{
      await FirestoreController().InsertUserInformationIntoFirebase({
      'email':value.user!.email.toString(),
      'phone':value.user!.phoneNumber.toString(),
      'name':value.user!.displayName.toString(),
      'password':''.toString(),
      'Token':value.user!.refreshToken,
      'provider':'Google'.toString(),
      'image':value.user!.photoURL.toString()
      }).then((value) =>  Navigator.popAndPushNamed(context, '/'));
    });
    notifyListeners();
  }

}
