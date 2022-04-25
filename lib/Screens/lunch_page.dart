import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopemakeup/const/const_text_style.dart';
import 'package:shopemakeup/sharedPreferences/StooregSharedAuth.dart';
 
class LunchScreen extends StatefulWidget {
  const LunchScreen({Key? key}) : super(key: key);

  @override
  State<LunchScreen> createState() => _LunchScreenState();
}

class _LunchScreenState extends State<LunchScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3),() {
      if(storegAuthShared().IsLogged){
        Navigator.pushReplacementNamed(
            context, '/');
      }else{
        Navigator.pushReplacementNamed(
            context, 'Login_Screen');
      }
    },);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/lunch.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 375.w,
              height: 430.h,
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
                  Text(
                    '♡Chic Shop♡',
                    style: TextStyleConst().customTextStyle(
                        fontFamily: 'playfair',
                        size: 24,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    'Welcome to Chic Shop, Let’s shop!',
                    style: TextStyleConst().customTextStyle(
                        fontFamily: 'inter',
                        size: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 28.h,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'Login_Screen');
                    },
                    child: Text(
                      'Login',
                      style: TextStyleConst().customTextStyle(
                          fontFamily: 'inter',
                          size: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(311.03.w, 56.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90.r),
                      ),
                      primary:const Color(0xf0F178B6),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'SingUp_Screen');
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyleConst().customTextStyle(
                          size: 16,
                          fontFamily: 'inter',
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    style: TextButton.styleFrom(
                      minimumSize: Size(311.03.w, 56.h),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
