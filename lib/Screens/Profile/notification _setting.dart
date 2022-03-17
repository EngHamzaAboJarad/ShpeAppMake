import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopemakeup/Block/home_block/bloc_cubit_home.dart';
import 'package:shopemakeup/Block/home_block/bloc_status_home.dart';
import 'package:shopemakeup/const/const_text.dart';
import 'package:shopemakeup/const/const_text_style.dart';

class NotificationSetting extends StatelessWidget {
  const NotificationSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          'Notification Setting',
          style: TextStyleConst().customTextStyle(
              fontFamily: TextsConst().inter,
              size: 16,
              color: Color(0xffF178B6),
              fontWeight: FontWeight.w700),
        ),
      ),
      body: BlocConsumer<HomeCubitBloc, HomeStatusBloc>(
        listener: (context, state) {},
        builder: (context, state) {
          HomeCubitBloc object =  HomeCubitBloc().getCubitHome(context);
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.h),
            child: ListView(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Text(
                    'Apps Notification',
                    style: TextStyleConst().customTextStyle(
                      fontFamily: TextsConst().inter,
                      size: 14,
                      color: object.Switch1?Color(0xffF178B6):Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: Switch(
                      value: object.Switch1,
                      activeColor: Colors.white,
                      activeTrackColor: Color(0xffF178B6),
                      onChanged: (vls) {
                        object.setSwitch1(vls);
                      }),
                ),
                Divider(
                  thickness: 2.w,
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Text(
                    'Recommended Product',
                    style: TextStyleConst().customTextStyle(
                      fontFamily: TextsConst().inter,
                      size: 14,
                      color: object.Switch2?Color(0xffF178B6):Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: Switch(
                      value: object.Switch2,
                      activeColor: Colors.white,
                      activeTrackColor: Color(0xffF178B6),
                      onChanged: (vls) {
                        object.setSwitch2(vls);
                      }),
                ),
                Divider(
                  thickness: 2.w,
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Text(
                    'Newsletter Yokoto',
                    style: TextStyleConst().customTextStyle(
                      fontFamily: TextsConst().inter,
                      size: 14,
                      color:object.Switch3?Color(0xffF178B6):Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: Switch(
                      value: object.Switch3,
                      activeColor: Colors.white,
                      activeTrackColor: Color(0xffF178B6),
                      onChanged: (vls) {
                        object.setSwitch3(vls);
                      }),
                ),
                Divider(
                  thickness: 2.w,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
