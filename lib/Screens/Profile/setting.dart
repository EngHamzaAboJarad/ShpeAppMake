import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shopemakeup/Provider/home_block/provider_home.dart';
import 'package:shopemakeup/const/const_text.dart';
import 'package:shopemakeup/const/const_text_style.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

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
          'Setting',
          style: TextStyleConst().customTextStyle(
              fontFamily: TextsConst().inter,
              size: 16,
              color: Color(0xffF178B6),
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.h),
            child: ListView(
              children: [
                //Language
                ListTile(
                  onTap: () => Navigator.pushNamed(context, 'Language_Screen'),
                  contentPadding: EdgeInsets.zero,
                  leading: Text(
                    'Language',
                    style: TextStyleConst().customTextStyle(
                      fontFamily: TextsConst().inter,
                      size: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  title: Text(
                    object.language,
                    style: TextStyleConst().customTextStyle(
                      fontFamily: TextsConst().inter,
                      size: 14,
                      color: Colors.black26,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.end,
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'Language_Screen');
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      size: 24.w,
                    ),
                  ),
                ),
                Divider(
                  thickness: 2.w,
                ),
                //Country / Region
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Text(
                    'Country / Region',
                    style: TextStyleConst().customTextStyle(
                      fontFamily: TextsConst().inter,
                      size: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  title: Text(
                    'Indonesia',
                    style: TextStyleConst().customTextStyle(
                      fontFamily: TextsConst().inter,
                      size: 14,
                      color: Colors.black26,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.end,
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      size: 24.w,
                    ),
                  ),
                ),
                Divider(
                  thickness: 2.w,
                ),
                //Password
                ListTile(
                  onTap: () => Navigator.pushNamed(context,'ChangePassword_Screen'),
                  contentPadding: EdgeInsets.zero,
                  leading: Text(
                    'Change Password',
                    style: TextStyleConst().customTextStyle(
                      fontFamily: TextsConst().inter,
                      size: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context,'ChangePassword_Screen');
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      size: 24.w,
                    ),
                  ),
                ),
                Divider(
                  thickness: 2.w,
                ),
                //PhoneNumber
                ListTile(
                  onTap: ()=>Navigator.pushNamed(context,'ChangePhoneNumber_Screen'),
                  contentPadding: EdgeInsets.zero,
                  leading: Text(
                    'Change Phone Number',
                    style: TextStyleConst().customTextStyle(
                      fontFamily: TextsConst().inter,
                      size: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      onTap: ()=>Navigator.pushNamed(context,'ChangePhoneNumber_Screen');
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      size: 24.w,
                    ),
                  ),
                ),
                Divider(
                  thickness: 2.w,
                ),
                //Notification
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, 'NotificationSetting_Screen');
                  },
                  contentPadding: EdgeInsets.zero,
                  leading: Text(
                    'Notification Setting',
                    style: TextStyleConst().customTextStyle(
                      fontFamily: TextsConst().inter,
                      size: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, 'NotificationSetting_Screen');
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      size: 24.w,
                    ),
                  ),
                ),
                Divider(
                  thickness: 2.w,
                ),
              ],
            ),
      ),
    );
  }
}
