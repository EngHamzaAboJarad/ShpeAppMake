import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopemakeup/const/const_text.dart';
import 'package:shopemakeup/const/const_text_style.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Notification',
            style: TextStyle(
              color: Color(0xffF178B6),
            ),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          bottom: TabBar(
            indicatorColor: Color(0xffF178B6),
            unselectedLabelColor: Color(0xffC4C4C4),
            labelStyle: TextStyleConst().customTextStyle(
                fontFamily: TextsConst().inter,
                size: 14,
                color: Colors.grey,
                fontWeight: FontWeight.w700),
            automaticIndicatorColorAdjustment: false,
            labelColor: Color(0xffF178B6),
            tabs: const [
              Tab(
                text: 'Transaction',
              ),
              Tab(
                text: 'Promo',
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: TabBarView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0.h),
                child: ListView.separated(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {

                        },
                        child: Container(
                          width: 311.w,
                          height: 88.h,
                           child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 64.w,
                                height: 70.62.h,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: const AssetImage(
                                            'assets/image8.png'),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(12.r)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: 46.w,
                                      height: 16.h,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(90.r),
                                        color: Colors.black,
                                      ),
                                      child: Center(
                                        child: Text(
                                          '3 Items',
                                          style: TextStyleConst()
                                              .customTextStyle(
                                                  fontFamily:
                                                      TextsConst().inter,
                                                  size: 6,
                                                  fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    ],
                                ),
                              ),
                              SizedBox(width: 12.w,),
                              Container(
                                width: 280.w,
                                height: 73.h,
                                 child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('ID Order : 28122004',style: TextStyleConst().customTextStyle(
                                            fontFamily: TextsConst().inter,
                                            size: 10,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),),

                                        Text('05.41 PM',style: TextStyleConst().customTextStyle(
                                            fontFamily: TextsConst().inter,
                                            size: 10,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500),)
                                      ],
                                    ),
                                    SizedBox(height: 5.h,),
                                    Text('Order statusOrder statusOrder',style: TextStyleConst().customTextStyle(
                                        fontFamily: TextsConst().inter,
                                        size: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700),maxLines: 1,),
                                   SizedBox(height: 8.h,),
                                    Text('Order notesOrder notesOrdernotesOrdernotesOrder notesOrdernotesOrder notesOrdernotesOrdernotesOrder',
                                      style: TextStyleConst().customTextStyle(
                                        fontFamily: TextsConst().inter,
                                        size: 10,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),maxLines: 2,)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 16.h,
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0.h),
                child: ListView.separated(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {

                        },
                        child: Container(
                          width: 311.w,
                          height: 88.h,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 64.w,
                                height: 70.62.h,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: const AssetImage(
                                            'assets/image8.png'),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(12.r)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: 46.w,
                                      height: 16.h,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(90.r),
                                        color: Colors.black,
                                      ),
                                      child: Center(
                                        child: Text(
                                          '3 Items',
                                          style: TextStyleConst()
                                              .customTextStyle(
                                              fontFamily:
                                              TextsConst().inter,
                                              size: 6,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 12.w,),
                              Container(
                                width: 280.w,
                                height: 73.h,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('ID Order : 28122004',style: TextStyleConst().customTextStyle(
                                            fontFamily: TextsConst().inter,
                                            size: 10,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),),

                                        Text('05.41 PM',style: TextStyleConst().customTextStyle(
                                            fontFamily: TextsConst().inter,
                                            size: 10,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500),)
                                      ],
                                    ),
                                    SizedBox(height: 5.h,),
                                    Text('Order statusOrder statusOrder',style: TextStyleConst().customTextStyle(
                                        fontFamily: TextsConst().inter,
                                        size: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700),maxLines: 1,),
                                    SizedBox(height: 8.h,),
                                    Text('Order notesOrder notesOrdernotesOrdernotesOrder notesOrdernotesOrder notesOrdernotesOrdernotesOrder',
                                      style: TextStyleConst().customTextStyle(
                                          fontFamily: TextsConst().inter,
                                          size: 10,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500),maxLines: 2,)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 16.h,
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
