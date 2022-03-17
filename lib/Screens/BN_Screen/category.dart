import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopemakeup/const/const_text.dart';
import 'package:shopemakeup/const/const_text_style.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title:   Text(
            'Category',
            style: TextStyleConst().customTextStyle(
                fontFamily: TextsConst().inter,
                size: 16,
                color: Color(0xffF178B6),
                fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          bottom: TabBar(
            isScrollable: true,
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
                text: 'Women1',
              ),
              Tab(
                text: 'Women2',
              ),
              Tab(
                text: 'Women3',
              ),
              Tab(
                text: 'Women4',
              ),
            ],
          ),
        ),
        body: Padding(
          padding:   EdgeInsets.symmetric(vertical: 20.h),
          child: TabBarView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0.h),
                child: ListView.separated(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return InkWell(
                       onTap: (){
                         Navigator.popAndPushNamed(context,'ProductPage_Screen');
                       },
                        child: Container(
                          width: 376.w,
                          height: 128.h,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/image9.png'),
                                  fit: BoxFit.cover)),
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            color: Color(0x61121212),
                            child: Center(
                              child: Text(
                                'Category-$index',
                                style: TextStyleConst().customTextStyle(
                                    fontFamily: TextsConst().inter,
                                    size: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 12.h,
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0.h),
                child: ListView.separated(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (){
                          Navigator.popAndPushNamed(context,'ProductPage_Screen');
                        },
                        child: Container(
                          width: 376.w,
                          height: 128.h,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/image8.png'),
                                  fit: BoxFit.cover)),
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            color: Color(0x61121212),
                            child: Center(
                              child: Text(
                                'Category-$index',
                                style: TextStyleConst().customTextStyle(
                                    fontFamily: TextsConst().inter,
                                    size: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 12.h,
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0.h),
                child: ListView.separated(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (){
                          Navigator.pushNamed(context,'ProductPage_Screen');
                        },
                        child: Container(
                          width: 376.w,
                          height: 128.h,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/image 10.png'),
                                  fit: BoxFit.cover)),
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            color: Color(0x61121212),
                            child: Center(
                              child: Text(
                                'Category-$index',
                                style: TextStyleConst().customTextStyle(
                                    fontFamily: TextsConst().inter,
                                    size: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 12.h,
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0.h),
                child: ListView.separated(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (){
                          Navigator.popAndPushNamed(context,'ProductPage_Screen');
                        },
                        child: Container(
                          width: 376.w,
                          height: 128.h,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/image9.png'),
                                  fit: BoxFit.cover)),
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            color: Color(0x61121212),
                            child: Center(
                              child: Text(
                                'Category-$index',
                                style: TextStyleConst().customTextStyle(
                                    fontFamily: TextsConst().inter,
                                    size: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 12.h,
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
