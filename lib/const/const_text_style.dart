import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopemakeup/const/const_text.dart';

class TextStyleConst {
  TextStyleConst._();
  static final TextStyleConst _object = TextStyleConst._();
  factory TextStyleConst() {
    return _object;
  }
  TextStyle customTextStyle(
      {required String fontFamily,
      required double size,
      Color color = Colors.white,
      required FontWeight fontWeight,
      FontStyle fontStyle = FontStyle.normal
      }) {
    return TextStyle(
        fontFamily: fontFamily,
        fontSize: size.sp,
        color: color,
        fontWeight: fontWeight,
        fontStyle: fontStyle
        );
  }
  Widget titleApp(){
    return Container(
      width: 190.w,
      height: 32.h,
      child: Row(children: [
        Icon(Icons.favorite_border,color: Color(0xffF178B6),size: 30.w,),Text('Chic Shop'
      ,style: TextStyleConst().customTextStyle(fontFamily: TextsConst().playfair,
       size: 24,
        fontWeight: FontWeight.w700,fontStyle: FontStyle.italic,color: Color(0xffF178B6)),),Icon(Icons.favorite_border,size: 30.w,color: Color(0xffF178B6)),]),
    );
  }
}
