import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopemakeup/Block/home_block/bloc_cubit_home.dart';
import 'package:shopemakeup/Block/home_block/bloc_status_home.dart';
import 'package:shopemakeup/const/const_ItemProduct.dart';
import 'package:shopemakeup/const/const_text.dart';
import 'package:shopemakeup/const/const_text_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubitBloc, HomeStatusBloc>(
      builder: (context, state) {
        int p = BlocProvider.of<HomeCubitBloc>(context).ChangIndexPage;
        return SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 311.w,
                height: 192.h,
                child: PageView(
                  controller:
                      BlocProvider.of<HomeCubitBloc>(context).pageController,
                  onPageChanged: (int b) {
                    BlocProvider.of<HomeCubitBloc>(context).SetIndexPage(b);
                  },
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8.0.h),
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/image9.png'),
                                fit: BoxFit.cover,
                                filterQuality: FilterQuality.high),
                            borderRadius: BorderRadius.circular(24.r)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0.h),
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/image8.png'),
                                fit: BoxFit.cover,
                                filterQuality: FilterQuality.high),
                            borderRadius: BorderRadius.circular(24.r)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0.h),
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/image 10.png'),
                                fit: BoxFit.cover,
                                filterQuality: FilterQuality.high),
                            borderRadius: BorderRadius.circular(24.r)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.circle,
                    size: 12.w,
                    color: p == 0 ? Color(0xf0F178B6) : Colors.grey,
                  ),
                  Icon(
                    Icons.circle,
                    size: 12.w,
                    color: p == 1 ? Color(0xf0F178B6) : Colors.grey,
                  ),
                  Icon(
                    Icons.circle,
                    size: 12.w,
                    color: p == 2 ? Color(0xf0F178B6) : Colors.grey,
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Shop by Category\t\t\t\t',
                      style: TextStyleConst().customTextStyle(
                          fontFamily: TextsConst().inter,
                          size: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w700)),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0.h),
                    child: GestureDetector(
                      onTap: () {},
                      child: Text('View All',
                          style: TextStyleConst().customTextStyle(
                              fontFamily: TextsConst().inter,
                              size: 12,
                              color: Colors.black45,
                              fontWeight: FontWeight.w500)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                width: 328.w,
                height: 90.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: Column(
                        children: [
                          Container(
                            width: 64.w,
                            height: 64.h,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withAlpha(40),
                                      offset: Offset(4, 3),
                                      blurRadius: 6)
                                ],
                                image: DecorationImage(
                                    image: AssetImage('assets/image1.png'),
                                    fit: BoxFit.cover,
                                    filterQuality: FilterQuality.high),
                                borderRadius: BorderRadius.circular(59.r)),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text('ItemName',
                              style: TextStyleConst().customTextStyle(
                                  fontFamily: TextsConst().inter,
                                  size: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 26.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Recommended For You',
                      style: TextStyleConst().customTextStyle(
                          fontFamily: TextsConst().inter,
                          size: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w700)),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0.h),
                    child: GestureDetector(
                      onTap: () {},
                      child: Text('View All',
                          style: TextStyleConst().customTextStyle(
                              fontFamily: TextsConst().inter,
                              size: 12,
                              color: Colors.black45,
                              fontWeight: FontWeight.w500)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 31.h,
              ),
              SizedBox(
                width: 328.w,
                height: 226.h,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ItemProduct().WidgetItems(context);
                    },
                    itemCount: 5),
              ),
              SizedBox(
                height: 16.h,
              ),
            ],
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
