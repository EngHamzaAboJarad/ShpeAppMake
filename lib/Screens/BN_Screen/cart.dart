import 'package:flutter/material.dart';
import 'package:shopemakeup/const/const_text.dart';
import 'package:shopemakeup/const/const_text_style.dart';
class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/emptycart.png',width: 400,height: 400 ,),
        Text('🥰 The cart is empty go shopping 🥰', style: TextStyleConst().customTextStyle(
            fontFamily: TextsConst().inter,
            size: 18,
            color: Color(0xffF178B6),
            fontWeight: FontWeight.w700),)
      ],
    );
  }
}