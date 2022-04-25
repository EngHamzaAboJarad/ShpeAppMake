import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'const_text.dart';
import 'const_text_style.dart';

class text_filed {
  text_filed._();

  static final text_filed _object = text_filed._();

  factory text_filed() {
    return _object;
  }

  TextField TEXTINPUT(
      {String? src_img,
      String? hintText,
        int? lineCount = 1,
      required TextEditingController controller,
      required TextInputType keyboardType  ,
      suffixIcon,
        enabled = true,
       required bool obscureText}) {
    return TextField(
      cursorColor: Colors.black,
      cursorHeight: 24.h,
      keyboardType:keyboardType,
       controller: controller,
      obscureText: obscureText,
      maxLines: lineCount,
      style: TextStyleConst().customTextStyle(
          fontFamily: TextsConst().inter,
          size: 14,
          color:enabled?Colors.black:Colors.white,
          fontWeight: FontWeight.w500),
      decoration: InputDecoration(
        filled: true,
        fillColor: enabled?Color(0xffFFFFFF):Colors.black12,
        hintText: hintText,
        helperStyle: TextStyle(
          color: enabled?Colors.black:Colors.white,
        ),
        prefixIcon:  src_img  != null?Image.asset('assets/icons/$src_img'):null,
        suffixIcon: suffixIcon,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.5.r),
            borderSide: const BorderSide(color: Colors.white)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.5.r),
            borderSide: const BorderSide(color: Colors.white)),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.5.r),
            borderSide: const BorderSide(color: Colors.white)),
        ),
    );
  }
}
