import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shopemakeup/Provider/home_block/provider_home.dart';
import 'package:shopemakeup/const/const_text.dart';
import 'package:shopemakeup/const/const_text_style.dart';

class Language extends StatelessWidget {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var object = Provider.of<ProviderHome>(context, listen: false);
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
          'Language',
          style: TextStyleConst().customTextStyle(
              fontFamily: TextsConst().inter,
              size: 16,
              color: Color(0xffF178B6),
              fontWeight: FontWeight.w700),
        ),
      ),
      body:  Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.h),
            child: ListView(
              children: [
                ListTile(
                    onTap: () {
                      object.setLanguage('Arabic');
                      Navigator.pop(context);
                    },
                    contentPadding: EdgeInsets.zero,
                    leading: Text(
                      'Arabic',
                      style: TextStyleConst().customTextStyle(
                        fontFamily: TextsConst().inter,
                        size: 14,
                        color: object.language == 'Arabic'
                            ? Colors.black
                            : Colors.black26,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    trailing: object.language == 'Arabic'
                        ? CircleAvatar(
                            radius: 24 / 2.r,
                            backgroundColor: Color(0x56F178B6),
                            child: Icon(
                              Icons.check,
                              size: 15.w,
                              color: Color(0xffF178B6),
                            ),
                          )
                        : null),
                Divider(
                  thickness: 2.w,
                ),
                ListTile(
                    onTap: () {
                      object.setLanguage('English');
                      Navigator.pop(context);
                    },
                    contentPadding: EdgeInsets.zero,
                    leading: Text(
                      'English',
                      style: TextStyleConst().customTextStyle(
                        fontFamily: TextsConst().inter,
                        size: 14,
                        color: object.language == 'English'
                            ? Colors.black
                            : Colors.black26,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    trailing: object.language == 'English'
                        ? CircleAvatar(
                            radius: 24 / 2.r,
                            backgroundColor: Color(0x56F178B6),
                            child: Icon(
                              Icons.check,
                              size: 15.w,
                              color: Color(0xffF178B6),
                            ),
                          )
                        : null),
                Divider(
                  thickness: 2.w,
                ),
              ],
            ),
      ),
    );
  }
}
