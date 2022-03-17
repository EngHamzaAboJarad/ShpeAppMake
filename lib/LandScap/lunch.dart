import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopemakeup/const/const_text.dart';
import 'package:shopemakeup/const/const_text_style.dart';

SingleChildScrollView lunch(context) {
  return SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 375.h,
          width: double.infinity.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.r),
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(0, 241, 120, 182),
                Color.fromARGB(137, 241, 9, 90),
              ],
              begin: Alignment.topCenter,
              end: Alignment.center,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(TextsConst().titleLunch,
                  style: TextStyleConst().customTextStyle(
                      fontFamily: TextsConst().playfair,
                      size: 24,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic)),
              SizedBox(
                height: 8.h,
              ),
              Text(TextsConst().welcome,
                  style: TextStyleConst().customTextStyle(
                      fontFamily: TextsConst().inter,
                      size: 14,
                      fontWeight: FontWeight.w600)),
              SizedBox(
                height: 28.h,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(TextsConst().Login,
                    style: TextStyleConst().customTextStyle(
                        fontFamily: TextsConst().inter,
                        size: 16,
                        fontWeight: FontWeight.w700)),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(311.03 / .5.w, 56.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(90.r),
                  ),
                  primary: Color(0xf0F178B6),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              TextButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, '/');
                },
                child: Text(TextsConst().SignUp,
                    style: TextStyleConst().customTextStyle(
                        size: 16,
                        fontFamily: TextsConst().inter,
                        fontWeight: FontWeight.w500,
                        color: Colors.white)),
                style: TextButton.styleFrom(
                  minimumSize: Size(311.03 / .5.w, 56.h),
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
