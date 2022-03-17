import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopemakeup/Block/auth_block/bloc_status_auth.dart';
// shopemakeup
class AuthCubitBloc extends Cubit<AuthStatusBloc> {
  AuthCubitBloc() : super(InitStatus());
  AuthCubitBloc getCubitAuth(context) => BlocProvider.of(context);
  TextEditingController EmailAdderss = TextEditingController();
  TextEditingController Password = TextEditingController();
  TextEditingController FullName = TextEditingController();
  TextEditingController PhoneNumber = TextEditingController();
  TextEditingController ChangePhoneNumberController = TextEditingController();

  TextEditingController CurrentPasswordController = TextEditingController();
  TextEditingController NewPasswordController = TextEditingController();
  TextEditingController RepeatNewPasswordController = TextEditingController();

  bool visibilitys_obscureText = true;
  void setVisibility_obscureText(bool v) {
    emit(SetValueVis());
    this.visibilitys_obscureText = v;
  }
  bool visibilitys_singup_obscureText  = true;
  void setVisibilitysingup_obscureText (bool v) {
    emit(SetValueVissingup());
    this.visibilitys_singup_obscureText  = v;
  }
  //PasswordSetting

  //CurrentPasswordController
  bool visibilitys_Password1_obscureText  = true;
  void setVisibilityPassword1_obscureText (bool v) {
    emit(SetValueVisPassword1());
    this.visibilitys_Password1_obscureText  = v;
  }
  //NewPasswordController
  bool visibilitys_Password2_obscureText  = true;
  void setVisibilityPassword2_obscureText (bool v) {
    emit(SetValueVisPassword2());
    this.visibilitys_Password2_obscureText  = v;
  }
  //RepeatNewPasswordController
  bool visibilitys_Password3_obscureText  = true;
  void setVisibilityPassword3_obscureText (bool v) {
    emit(SetValueVisPassword3());
    this.visibilitys_Password3_obscureText  = v;
  }
  //PhoneNumberSetting
  String ChangePhoneNumber = '';
  void SetChangePhoneNumber(String newPhone){
    ChangePhoneNumber  = newPhone;
    emit(stateChangePhoneNubmer());
  }
}
