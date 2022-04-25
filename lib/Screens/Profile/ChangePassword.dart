import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shopemakeup/Provider/auth_block/provider_auth.dart';
import 'package:shopemakeup/const/const_text.dart';
import 'package:shopemakeup/const/const_text_filed.dart';
import 'package:shopemakeup/const/const_text_style.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _object = Provider.of<ProviderAuth>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 24.w,
          ),
        ),
        automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          'Change Password',
          style: TextStyleConst().customTextStyle(
              fontFamily: TextsConst().inter,
              size: 16,
              color: Color(0xffF178B6),
              fontWeight: FontWeight.w700),
        ),
      ),
      body:  Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 14.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'New Password',
                        style: TextStyleConst().customTextStyle(
                            fontFamily: 'inter',
                            color: Colors.black,
                            size: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      // text_filed().TEXTINPUT(
                      //     keyboardType: TextInputType.text,
                      //     hintText: '********',
                      //     controller: _object.CurrentPasswordController,
                      //     suffixIcon: IconButton(
                      //         onPressed: () {
                      //           if (_object.visibilitys_Password1_obscureText) {
                      //             _object.setVisibilityPassword1_obscureText(
                      //                 false);
                      //           } else {
                      //             _object
                      //                 .setVisibilityPassword1_obscureText(true);
                      //           }
                      //         },
                      //         icon: Icon(
                      //             _object.visibilitys_Password1_obscureText
                      //                 ? Icons.visibility
                      //                 : Icons.visibility_off)),
                      //     obscureText:
                      //         _object.visibilitys_Password1_obscureText),
                      // SizedBox(
                      //   height: 14.h,
                      // ),
                      // Text(
                      //   'New Password',
                      //   style: TextStyleConst().customTextStyle(
                      //       fontFamily: 'inter',
                      //       size: 14,
                      //       color: Colors.black,
                      //       fontWeight: FontWeight.w500),
                      // ),
                      // SizedBox(
                      //   height: 6.h,
                      // ),
                      text_filed().TEXTINPUT(
                          keyboardType: TextInputType.text,
                          hintText: '********',
                          controller: _object.NewPasswordController,
                          suffixIcon: IconButton(
                              onPressed: () {
                                if (_object.visibilitys_Password2_obscureText ) {
                                  _object.setVisibilityPassword2_obscureText (false);
                                } else {
                                  _object.setVisibilityPassword2_obscureText (true);
                                }
                              },
                              icon: Icon(_object.visibilitys_Password2_obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off)),
                          obscureText: _object.visibilitys_Password2_obscureText),
                      SizedBox(
                        height: 12.h,
                      ),
                      Text(
                        'Repeat New Password',
                        style: TextStyleConst().customTextStyle(
                            fontFamily: 'inter',
                            size: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      text_filed().TEXTINPUT(
                          keyboardType: TextInputType.text,
                          hintText: '********',
                          controller: _object.RepeatNewPasswordController,
                          suffixIcon: IconButton(
                              onPressed: () {
                                if (_object.visibilitys_Password3_obscureText ) {
                                  _object.setVisibilityPassword3_obscureText (false);
                                } else {
                                  _object.setVisibilityPassword3_obscureText (true);
                                }
                              },
                              icon: Icon(_object.visibilitys_Password3_obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off)),
                          obscureText: _object.visibilitys_Password3_obscureText),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                     Provider.of<ProviderAuth>(context).ForgetPass(context);
                    //TODO Change Phone Number
                  },
                  child: Text('Change Password',
                      style: TextStyleConst().customTextStyle(
                          fontFamily: 'inter',
                          size: 16,
                          fontWeight: FontWeight.w700)),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(311.03.w, 56.h),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(90.r),
                    ),
                    primary: Color(0xf0F178B6),
                  ),
                ),
              ],
            ),
      ),
    );
  }
}
