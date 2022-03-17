import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopemakeup/Block/home_block/bloc_cubit_home.dart';
import 'package:shopemakeup/const/const_text_style.dart';

class OrderFailedScreen extends StatelessWidget {
  const OrderFailedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/orderfailed.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity.w,
            height: 329.h,
            decoration: BoxDecoration(
              color:const Color.fromARGB(80, 18, 18, 18),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(48.r),
                topRight: Radius.circular(48.r),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Sorry, your transaction failed', style: TextStyleConst().customTextStyle(
                    fontFamily:'inter',
                    size: 16,
                    fontWeight: FontWeight.w700)),
                Text('Oops! Somethings went wrong. \n Try again later to continue your order.',
                  style: TextStyleConst().customTextStyle(
                      fontFamily:'inter',
                      size: 14,
                      fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
                ElevatedButton(
                  onPressed: () {
                    //TODO Again Send Request Pay  Orders
                  },
                  child: Text('Try Again',
                      style: TextStyleConst().customTextStyle(
                          fontFamily:'inter',
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
                TextButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context,'/');
                    BlocProvider.of<HomeCubitBloc>(context).SetIndexPage(0);
                    },
                  child: Text('Back to Checkout',
                      style: TextStyleConst().customTextStyle(
                          fontFamily:'inter',
                          size: 16,
                          fontWeight: FontWeight.w700)),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(311.03.w, 56.h),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(90.r),
                    ),

                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
