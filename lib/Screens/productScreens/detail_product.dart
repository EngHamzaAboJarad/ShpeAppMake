import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:shopemakeup/Block/home_block/bloc_cubit_home.dart';
import 'package:shopemakeup/Block/home_block/bloc_status_home.dart';
import 'package:shopemakeup/const/const_text.dart';
import 'package:shopemakeup/const/const_text_style.dart';

class ProductDesc extends StatelessWidget {
  const ProductDesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Detail Product',
          style: TextStyleConst().customTextStyle(
              fontFamily: TextsConst().inter,
              size: 16,
              color: Color(0xffF178B6),
              fontWeight: FontWeight.w700),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 24.w,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                //TODO METHOD Search in Page_Product
              },
              icon: Image.asset('assets/icons/Search.png'))
        ],
      ),
      body: BlocConsumer<HomeCubitBloc, HomeStatusBloc>(
        listener: (context, state) {},
        builder: (context, state) => Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 32.h),              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 311.w,
                    height: 260.h,
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
                        color: BlocProvider.of<HomeCubitBloc>(context)
                                    .ChangIndexPage ==
                                0
                            ? Color(0xf0F178B6)
                            : Colors.grey,
                      ),
                      Icon(
                        Icons.circle,
                        size: 12.w,
                        color: BlocProvider.of<HomeCubitBloc>(context)
                                    .ChangIndexPage ==
                                1
                            ? Color(0xf0F178B6)
                            : Colors.grey,
                      ),
                      Icon(
                        Icons.circle,
                        size: 12.w,
                        color: BlocProvider.of<HomeCubitBloc>(context)
                                    .ChangIndexPage ==
                                2
                            ? Color(0xf0F178B6)
                            : Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Adidas Terrex Graphic Tee',
                        style: TextStyleConst().customTextStyle(
                            fontFamily: TextsConst().inter,
                            size: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                      CircleAvatar(
                          backgroundColor: Color(0xffF5ECEB),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    'Price 45\$',
                    style: TextStyleConst().customTextStyle(
                        fontFamily: TextsConst().inter,
                        size: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    'Description : ',
                    style: TextStyleConst().customTextStyle(
                        fontFamily: TextsConst().inter,
                        size: 18,
                        color: Colors.black45,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  SizedBox(
                    height: 100.h,
                    width: double.infinity.w,
                    child: const SingleChildScrollView(
                      child: Text(
                        'assssssssssssssssssssss'
                        'ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss'
                        'sassssssssssssssssssssssssssssssssssssasssssssssssssssssssssssssss'
                        'sssssssssassssssssssssssssssssssssssssssssssssasssssssssssssssssssssss'
                        'sssssssssssss',
                        style: TextStyle(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('+ Add to cart',
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
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context,'ReviewScreen_Screen');
                },
                child: Text(
                  'Reviews',
                  style: TextStyleConst().customTextStyle(
                      fontFamily: TextsConst().inter,
                      size: 20,
                      color:  Color(0xffF178B6),
                      fontWeight: FontWeight.w500),

                ),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(200.w,50.h),
                    primary:Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.zero,
                            bottomRight: Radius.zero,
                            topRight: Radius.circular(16.r),
                            topLeft: Radius.circular(16.r)
                        )
                    )
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context,'ProductDesc_Screen');
                },
                child: Text(
                  'Details',
                  style: TextStyleConst().customTextStyle(
                      fontFamily: TextsConst().inter,
                      size: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(200.w,50.h),
                    primary:Color(0xffF178B6),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.zero,
                            bottomRight: Radius.zero,
                            topRight: Radius.circular(16.r),
                            topLeft: Radius.circular(16.r)
                        )
                    )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
