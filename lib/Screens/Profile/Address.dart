import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shopemakeup/Provider/auth_block/provider_auth.dart';
import 'package:shopemakeup/const/const_text.dart';
import 'package:shopemakeup/const/const_text_filed.dart';
import 'package:shopemakeup/const/const_text_style.dart';
class AddAddress extends StatelessWidget {
  const AddAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _object = Provider.of<ProviderAuth>(context,listen: false);
    return ChangeNotifierProvider<ProviderAuth>(
      create: (context) =>ProviderAuth(),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Add Addresss',
            style: TextStyleConst().customTextStyle(
                fontFamily: TextsConst().inter,
                size: 16,
                color: Color(0xffF178B6),
                fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 24.sm,
              )),
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 64.0.h),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 21.h),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    text_filed().TEXTINPUT(
                        keyboardType: TextInputType.datetime,
                        src_img: 'profile.png',
                        hintText: 'Full Name',
                        controller: _object.FullName,
                        obscureText:   false),
                    SizedBox(height: 12.h),
                    text_filed().TEXTINPUT(
                        keyboardType: TextInputType.phone,
                        src_img: 'call.png',
                        hintText: 'Phone Number',
                        controller: _object.PhoneNumber,
                        obscureText:  false),
                    SizedBox(
                      height: 12.h,
                    ),
                    text_filed().TEXTINPUT(
                        keyboardType: TextInputType.emailAddress,
                        hintText: 'Address 1',
                        lineCount: 2,
                        controller: _object.AddressOne,
                        obscureText:   false),
                    SizedBox(
                      height: 12.h,
                    ),
                    text_filed().TEXTINPUT(
                        keyboardType: TextInputType.emailAddress,
                        hintText: 'Address 2',
                        lineCount: 2,
                        controller: _object.AddressTow,
                        obscureText:   false),
                    SizedBox(
                      height: 40.h,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Save Address',
                          style: TextStyleConst().customTextStyle(
                              fontFamily: 'inter',
                              size: 16,
                              fontWeight: FontWeight.w700)),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(311.03.w, 56.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(90.r),
                        ),
                        primary: Color(0xf0F178B6),
                      ),
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
