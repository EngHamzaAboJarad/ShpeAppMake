import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopemakeup/const/const_text.dart';
import 'package:shopemakeup/const/const_text_style.dart';

class ItemProduct{
  ItemProduct._();
  static final ItemProduct _object = ItemProduct._();
  factory ItemProduct() {
    return _object;
  }
  InkWell WidgetItems(context){
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context,'ProductDesc_Screen');
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 135.w,
            height: 179.h,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withAlpha(40),
                      offset: const Offset(4, 3),
                      blurRadius: 6)
                ],
                image: const DecorationImage(
                    image: AssetImage('assets/image 10.png'),
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high),
                borderRadius: BorderRadius.circular(24.r),
                color: Colors.black54),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Center(
                    child: Text(
                      '45\$',
                      style: TextStyleConst().customTextStyle(
                          fontFamily: TextsConst().inter,
                          size: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  width: 45.w,
                  height: 45.h,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24.r),
                      bottomRight: Radius.circular(24.r),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          SizedBox(
            width: 155.w,
            height: 39.h,
            child: Row(
              children: [
                Text(
                  'E. Embriodered',
                  style: TextStyleConst().customTextStyle(
                      fontFamily: TextsConst().inter,
                      size: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                IconButton(
                  onPressed: () {
                  },
                  icon: const Icon(Icons.add_circle_rounded),
                  iconSize: 30.w,
                  color: Colors.pinkAccent,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}