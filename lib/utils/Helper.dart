
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

mixin Helper {
  void ShowSnackBar(
      {required BuildContext context,
      required String Message,
      required bool Error}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: Duration(seconds: 3),
        dismissDirection: DismissDirection.up,
         backgroundColor: Colors.transparent,
         elevation: 0,
         width: 350,
        content: Container(
          width: double.infinity.w,
          height: 70.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            gradient:   LinearGradient(
              colors: [
                 Error == false ?Color(0xf1b91d73):Color(0xff78ffd6),
                 Error == false ? Color(0xfff953c6):Color(0xffa8ff78),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Text(
              Message,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        behavior: SnackBarBehavior.floating,

      ),
    );
  }
}
