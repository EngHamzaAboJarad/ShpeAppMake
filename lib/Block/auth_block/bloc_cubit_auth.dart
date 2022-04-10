import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopemakeup/Block/auth_block/bloc_status_auth.dart';
import 'package:shopemakeup/FirebaseController/RegisterController.dart';
import 'package:shopemakeup/utils/Helper.dart';

// shopemakeup
class AuthCubitBloc extends Cubit<AuthStatusBloc> with Helper {
  AuthCubitBloc() : super(InitStatus());

  AuthCubitBloc getCubitAuth(context) => BlocProvider.of(context);
  TextEditingController EmailAdderss = TextEditingController();
  TextEditingController Password = TextEditingController();
  TextEditingController FullName = TextEditingController();
  TextEditingController PhoneNumber = TextEditingController();

  //EmailAdderss,Password,FullName,PhoneNumberمستخدمين في انشاء حساب
  // String? ErrorEmail,ErrorName,ErrorPassword,ErrorPhone;
  TextEditingController EmailLogin = TextEditingController();
  TextEditingController PasswordLogin = TextEditingController();
  TextEditingController ChangePhoneNumberController = TextEditingController();

  TextEditingController CurrentPasswordController = TextEditingController();
  TextEditingController NewPasswordController = TextEditingController();
  TextEditingController RepeatNewPasswordController = TextEditingController();
  TextEditingController SearchController = TextEditingController();
  TextEditingController AddressOne = TextEditingController();
  TextEditingController AddressTow = TextEditingController();
  bool visibilitys_obscureText = true;

  void setVisibility_obscureText(bool v) {
    emit(SetValueVis());
    this.visibilitys_obscureText = v;
  }

  bool visibilitys_singup_obscureText = true;

  void setVisibilitysingup_obscureText(bool v) {
    emit(SetValueVissingup());
    this.visibilitys_singup_obscureText = v;
  }

  //PasswordSetting

  //CurrentPasswordController
  bool visibilitys_Password1_obscureText = true;

  void setVisibilityPassword1_obscureText(bool v) {
    emit(SetValueVisPassword1());
    this.visibilitys_Password1_obscureText = v;
  }

  //NewPasswordController
  bool visibilitys_Password2_obscureText = true;

  void setVisibilityPassword2_obscureText(bool v) {
    emit(SetValueVisPassword2());
    this.visibilitys_Password2_obscureText = v;
  }

  //RepeatNewPasswordController
  bool visibilitys_Password3_obscureText = true;

  void setVisibilityPassword3_obscureText(bool v) {
    emit(SetValueVisPassword3());
    this.visibilitys_Password3_obscureText = v;
  }

  //PhoneNumberSetting
  String ChangePhoneNumber = '';

  void SetChangePhoneNumber(String newPhone) {
    ChangePhoneNumber = newPhone;
    emit(stateChangePhoneNubmer());
  }

  /*##################################AuthOperations########################################*/
  void CreateAccount({required BuildContext context}) {
    if (PhoneNumber.text.length <= 13 &&
        FullName.text.isNotEmpty &&
        EmailAdderss.text.isNotEmpty &&
        PhoneNumber.text.isNotEmpty &&
        Password.text.isNotEmpty &&
        PhoneNumber.text[0] == '0' &&
        PhoneNumber.text[1] == '5' &&
        (PhoneNumber.text[2] == '6' || PhoneNumber.text[2] == '9')) {
      RegisterController()
          .CreateAccount(
              context: context,
              email: EmailAdderss.text,
              password: Password.text)
          .then((value) {
        FullName.text = '';
        PhoneNumber.text = '';
        EmailAdderss.text = '';
        Password.text = '';
        Navigator.pushNamed(context, 'Login_Screen');
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
    emit(CreateAccountStat());
  }
  void Login({required BuildContext context}) {
    emit(LogintStat());
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
  }
  void Logout() {
    RegisterController().SignOut();
    emit(LogoutStat());
  }
}
