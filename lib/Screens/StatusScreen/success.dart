import 'package:flutter/material.dart';
 import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shopemakeup/Provider/home_block/provider_home.dart';
 import 'package:shopemakeup/const/const_text_style.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/success.png'), fit: BoxFit.cover)),
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
                Text('Thank you, for the order', style: TextStyleConst().customTextStyle(
                    fontFamily:'inter',
                    size: 16,
                    fontWeight: FontWeight.w700)),
                Text('Your order has been approved. You will\n receive a confirmation email shortly.',
                    style: TextStyleConst().customTextStyle(
                        fontFamily:'inter',
                        size: 14,
                        fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context,'/');
                    Provider.of<ProviderHome>(context,listen: false).SetIndexPage(0);
                    // Navigator.popAndPushNamed(context,'Login_Screen');
                  },
                  child: Text('Continue Shopping',
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
