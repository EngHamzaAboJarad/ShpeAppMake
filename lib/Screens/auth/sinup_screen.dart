import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shopemakeup/Provider/auth_block/provider_auth.dart';
import 'package:shopemakeup/const/const_text_filed.dart';
import 'package:shopemakeup/const/const_text_style.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _object = Provider.of<ProviderAuth>(context, listen: false);
    return ChangeNotifierProvider<ProviderAuth>(
      create: (context) => ProviderAuth(),
      builder: (context, status) {
        return Scaffold(
          body: Padding(
            padding: EdgeInsets.only(top: 64.0.h),
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.h),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Let’s Get Started',
                        style: TextStyleConst().customTextStyle(
                            fontFamily: 'inter',
                            size: 22,
                            color: Color(0xffEF5DA8),
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 11.h,
                      ),
                      Text(
                        'Create new account',
                        style: TextStyleConst().customTextStyle(
                            fontFamily: 'inter',
                            size: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 64.h,
                      ),
                      text_filed().TEXTINPUT(
                          keyboardType: TextInputType.text,
                          src_img: 'profile.png',
                          hintText: 'Full Name',
                          enabled: Provider.of<ProviderAuth>(context, listen: false).enabledTextFields ,
                          controller: _object.FullName,
                          obscureText: false),
                      SizedBox(
                        height: 12.h
                      ),
                      text_filed().TEXTINPUT(
                          src_img: 'email.png',
                          keyboardType: TextInputType.emailAddress,
                          hintText: 'Email Address',
                          enabled: Provider.of<ProviderAuth>(context, listen: false).enabledTextFields ,
                          controller: _object.EmailAdderss,
                          obscureText: false),
                      SizedBox(height: 12.h),
                      text_filed().TEXTINPUT(
                          keyboardType: TextInputType.phone,
                          src_img: 'call.png',
                          enabled: Provider.of<ProviderAuth>(context, listen: false).enabledTextFields ,
                          hintText: 'Phone Number',
                          controller: _object.PhoneNumber,
                          obscureText: false),
                      SizedBox(
                        height: 12.h,
                      ),
                      text_filed().TEXTINPUT(
                          src_img: 'lock.png',
                          hintText: 'Password',
                          enabled: Provider.of<ProviderAuth>(context, listen: false).enabledTextFields ,
                          keyboardType: TextInputType.text,
                          controller: _object.Password,
                          suffixIcon: IconButton(
                              onPressed: () {
                                if (
                                Provider.of<ProviderAuth>(context,listen: false).
                                visibilitys_singup_obscureText) {
                                  Provider.of<ProviderAuth>(context,
                                      listen: false)
                                      .setVisibilitysingup_obscureText(false);
                                  log(Provider.of<ProviderAuth>(context,listen: false).
                                  visibilitys_singup_obscureText.toString());
                                } else {
                                  Provider.of<ProviderAuth>(context,
                                          listen: false)
                                      .setVisibilitysingup_obscureText(true);
                                  log(Provider.of<ProviderAuth>(context,listen: false).
                                  visibilitys_singup_obscureText.toString());
                                }
                              },
                              icon: Icon(Provider.of<ProviderAuth>(context)
                                      .visibilitys_singup_obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off)),
                          obscureText:
                              Provider.of<ProviderAuth>(context, listen: false)
                                  .visibilitys_singup_obscureText),
                      SizedBox(
                        height: 25.h,
                      ),
                      Provider.of<ProviderAuth>(context,listen: false).enabledTextFields == false?Center(child: CircularProgressIndicator(
                        color: Color(0xf0F178B6),
                        backgroundColor: Colors.black26,
                      )):Center(),
                      SizedBox(
                        height: 25.h,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          //
                           Provider.of<ProviderAuth>(context,listen: false).setEnabledTextFields(false);
                           _object.CreateAccount(context: context);
                          // Navigator.popAndPushNamed(context,'Login_Screen');
                         },
                        child: Text('Sign Up',
                            style: TextStyleConst().customTextStyle(
                                fontFamily: 'inter',
                                size: 16,
                                fontWeight: FontWeight.w700)),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Have an account? ',
                            textAlign: TextAlign.center,
                            style: TextStyleConst().customTextStyle(
                                fontFamily: 'inter',
                                color: Colors.black,
                                size: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.popAndPushNamed(
                                  context, 'Login_Screen');
                            },
                            child: Text(
                              'Login',
                              textAlign: TextAlign.center,
                              style: TextStyleConst().customTextStyle(
                                  fontFamily: 'inter',
                                  color: Color(0xffEF67AC),
                                  size: 14,
                                  fontWeight: FontWeight.w500),
                            ),
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
