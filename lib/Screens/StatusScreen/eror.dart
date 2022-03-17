import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopemakeup/Block/home_block/bloc_cubit_home.dart';
import 'package:shopemakeup/const/const_text_style.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/error.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity.w,
            height: 329.h,
            decoration: BoxDecoration(
              color:const Color.fromARGB(26, 18, 18, 18),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(48.r),
                topRight: Radius.circular(48.r),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('You are lost :(', style: TextStyleConst().customTextStyle(
                    fontFamily:'inter',
                    size: 16,
                    fontWeight: FontWeight.w700)),
                Text('I think you turned the wrong way.',
                  style: TextStyleConst().customTextStyle(
                      fontFamily:'inter',
                      size: 14,
                      fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context,'/');
                    BlocProvider.of<HomeCubitBloc>(context).SetIndexPage(0);

                    // Navigator.popAndPushNamed(context,'Login_Screen');
                  },
                  child: Text('Let’s Go Home',
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

              ],
            ),
          ),
        ),
      ),
    );
  }
}
