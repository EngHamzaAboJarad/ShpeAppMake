import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopemakeup/Block/auth_block/bloc_cubit_auth.dart';
import 'package:shopemakeup/Block/auth_block/bloc_status_auth.dart';
import 'package:shopemakeup/const/const_text_filed.dart';
import 'package:shopemakeup/const/const_text_style.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubitBloc, AuthStatusBloc>(
      listener: (context, state) {},
      builder: (context, state) {
        AuthCubitBloc _object = AuthCubitBloc().getCubitAuth(context);
        return Scaffold(
          body: Padding(
            padding: EdgeInsets.only(top: 64.h),
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.h),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Welcome Back!',
                          style: TextStyle(
                              fontFamily: 'inter',
                              fontSize: 22.sp,
                              color: Color(0xffEF5DA8),
                              fontWeight: FontWeight.w700)),
                      SizedBox(
                        height: 11.h,
                      ),
                      Text(
                        'Sign in to your account',
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black,
                            fontFamily: 'inter',
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 64.h,
                      ),
                      text_filed().TEXTINPUT(
                          keyboardType: TextInputType.emailAddress,
                          src_img: 'email.png',
                          hintText: 'Email Address',
                          controller: _object.EmailAdderss,
                          obscureText: false),
                      SizedBox(height: 12.h),
                      text_filed().TEXTINPUT(
                          keyboardType: TextInputType.number,
                          src_img: 'lock.png',
                          hintText: 'Password',
                          controller: _object.Password,
                          suffixIcon: IconButton(
                              onPressed: () {
                                if (_object.visibilitys_obscureText) {
                                  _object.setVisibility_obscureText(false);
                                } else {
                                  _object.setVisibility_obscureText(true);
                                }
                              },
                              icon: Icon(_object.visibilitys_obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off)),
                          obscureText: _object.visibilitys_obscureText),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                  fontFamily: 'inter',
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 60.h,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Navigator.popAndPushNamed(context,'Login_Screen');
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: 'inter',
                              fontWeight: FontWeight.w700),
                        ),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(311.03.w, 56.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(90.r),
                          ),
                          primary: Color(0xf0F178B6),
                        ),
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      Column(
                        children: [
                          Text(
                            'Or continue with',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.black,
                                fontFamily: 'inter',
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 28.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                  heroTag: 'Google',
                                  onPressed: () {
                                    Navigator.popAndPushNamed(context, '/');
                                  },
                                  child: Image.asset('assets/icons/google.png'),
                                  backgroundColor: Colors.white),
                              SizedBox(
                                width: 32.h,
                              ),
                              FloatingActionButton(
                                  onPressed: () {},
                                  heroTag: 'Facebook',
                                  backgroundColor: Colors.white,
                                  child:
                                      Image.asset('assets/icons/Facebook.png')),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don’t have an account?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.black,
                                fontFamily: 'inter',
                                fontWeight: FontWeight.w500),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.popAndPushNamed(
                                  context, 'SingUp_Screen');
                            },
                            child: Text('Sign Up',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'inter',
                                    color: Color(0xffEF67AC),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
