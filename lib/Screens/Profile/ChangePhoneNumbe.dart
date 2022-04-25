import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shopemakeup/Provider/auth_block/provider_auth.dart';
import 'package:shopemakeup/const/const_text.dart';
import 'package:shopemakeup/const/const_text_filed.dart';
import 'package:shopemakeup/const/const_text_style.dart';

class ChangePhoneNumber extends StatelessWidget {
  const ChangePhoneNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _object = Provider.of<ProviderAuth>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 24.w,
          ),
        ),
        automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          'Change Phone Number',
          style: TextStyleConst().customTextStyle(
              fontFamily: TextsConst().inter,
              size: 16,
              color: Color(0xffF178B6),
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 14.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'New Phone Number',
                    style: TextStyleConst().customTextStyle(
                        fontFamily: 'inter',
                        color: Colors.black,
                        size: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  text_filed().TEXTINPUT(
                      keyboardType: TextInputType.phone,
                      hintText: '(+972) 59-665-0117',
                      controller: _object.ChangePhoneNumberController,
                      obscureText: false),
                  SizedBox(
                    height: 14.h,
                  ),
                  Text(
                    'Repeat New Phone Number',
                    style: TextStyleConst().customTextStyle(
                        fontFamily: 'inter',
                        size: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  text_filed().TEXTINPUT(
                      keyboardType: TextInputType.phone,
                      hintText: '(+972) 59-665-0117',
                      controller: _object.ChangePhoneNumberController,
                      obscureText: false),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                //TODO Change Phone Number
              },
              child: Text('Change Phone Number',
                  style: TextStyleConst().customTextStyle(
                      fontFamily: 'inter',
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
    );
  }
}
