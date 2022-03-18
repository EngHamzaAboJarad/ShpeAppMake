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
      required bool obscureText}) {
    return TextField(
      keyboardType:keyboardType,
      controller: controller,
      obscureText: obscureText,
      maxLines: lineCount,
      style: TextStyleConst().customTextStyle(
          fontFamily: TextsConst().inter,
          size: 14,
          color: Colors.black,
          fontWeight: FontWeight.w500),
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffFFFFFF),
        hintText: hintText,
        prefixIcon:  src_img  != null?Image.asset('assets/icons/$src_img'):null,
        suffixIcon: suffixIcon,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.5.r),
            borderSide: const BorderSide(color: Colors.white)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.5.r),
            borderSide: const BorderSide(color: Colors.white)),
      ),
    );
  }
}
