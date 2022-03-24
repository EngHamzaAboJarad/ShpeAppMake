import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopemakeup/Block/auth_block/bloc_cubit_auth.dart';
import 'package:shopemakeup/Block/auth_block/bloc_status_auth.dart';
import 'package:shopemakeup/const/const_text.dart';
import 'package:shopemakeup/const/const_text_filed.dart';
import 'package:shopemakeup/const/const_text_style.dart';

class ShowAddress extends StatelessWidget {
  const ShowAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Show Address',
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
      body: BlocConsumer<AuthCubitBloc, AuthStatusBloc>(
          listener: (context, state) {},
          builder: (context, state) {
            AuthCubitBloc _object = AuthCubitBloc().getCubitAuth(context);
            return Padding(
              padding:   EdgeInsets.symmetric(horizontal: 24.h,vertical: 23.h),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: text_filed().TEXTINPUT(
                            controller: _object.SearchController,
                            keyboardType: TextInputType.text,
                            suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.search,
                                  color: Colors.black,
                                )),
                            obscureText: false),
                      ),
                      SizedBox(
                        width: 14.w,
                      ),
                      Container(
                        width: 57.w,
                        height: 57.w,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.gps_fixed,
                              size: 28.sm,
                            )),
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(6.r)),
                      )
                    ],
                  ),
                  SizedBox(height: 21.h,),
                  Container(
                    width: 327.w,
                    height: 181.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffFFFFFF),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(3,3),
                          blurRadius: 6,
                          blurStyle: BlurStyle.inner
                        )
                      ]

                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(onPressed: (){},
                            icon: Icon(Icons.radio_button_checked,color: Color(0xffF178B6),)),
                        Padding(
                          padding:   EdgeInsets.only(top: 10.0.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Bangalore-560016',
                                style: TextStyleConst().customTextStyle(
                                    fontFamily: TextsConst().inter,
                                    size: 10.5,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),),
                              Container(
                                width: 255.w,
                                height: 80.h,
                                child: Text('Akshya Nagar 1st Block 1st Cross,Ramimurit nagar, Bangalore-560016',
                                  maxLines: 3,
                                  style: TextStyleConst().customTextStyle(
                                      fontFamily: TextsConst().inter,
                                      size: 10.5,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),),
                              ),
                              Row(
                                children: [
                                  ElevatedButton(onPressed: (){},
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(94.w,36.h),
                                      primary: Colors.blueAccent
                                  ),
                                      child: Text('Edit'),),
                                  SizedBox(width: 84.w,),
                                  ElevatedButton(onPressed: (){},
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: Size(94.w,36.h),
                                        primary: Colors.redAccent
                                      ),
                                      child: Text('Delete'))
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h,),
                  Container(
                    width: 327.w,
                    height: 181.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffFFFFFF),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(3,3),
                              blurRadius: 6,
                              blurStyle: BlurStyle.inner
                          )
                        ]

                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(onPressed: (){},
                            icon: Icon(Icons.radio_button_unchecked,color: Colors.black12,)),
                        Padding(
                          padding:   EdgeInsets.only(top: 10.0.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Bangalore-560016',
                                style: TextStyleConst().customTextStyle(
                                    fontFamily: TextsConst().inter,
                                    size: 10.5,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),),
                              Container(
                                width: 255.w,
                                height: 80.h,
                                child: Text('Akshya Nagar 1st Block 1st Cross,Ramimurit nagar, Bangalore-560016',
                                  maxLines: 3,
                                  style: TextStyleConst().customTextStyle(
                                      fontFamily: TextsConst().inter,
                                      size: 10.5,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),),
                              ),
                              Row(
                                children: [
                                  ElevatedButton(onPressed: (){},
                                    style: ElevatedButton.styleFrom(
                                        minimumSize: Size(94.w,36.h),
                                        primary: Colors.blueAccent
                                    ),
                                    child: Text('Edit'),),
                                  SizedBox(width: 84.w,),
                                  ElevatedButton(onPressed: (){},
                                      style: ElevatedButton.styleFrom(
                                          minimumSize: Size(94.w,36.h),
                                          primary: Colors.redAccent
                                      ),
                                      child: Text('Delete'))
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h,),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context,'AddAddress_Screen');
                    },
                    child: Text('Add New Address',
                        style: TextStyleConst().customTextStyle(
                            fontFamily: 'inter',
                            size: 16,
                            fontWeight: FontWeight.w700)),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(311.03.w, 56.h),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(90.r),
                            topLeft: Radius.circular(90.r),
                             ),
                      ),
                      primary: Color(0xc1F178B6),
                    ),
                  ),
                  SizedBox(height:  20.h),
                  ElevatedButton(
                    onPressed: () {
                      //TODO Change Phone Number
                    },
                    child: Text('Continue Payment',
                        style: TextStyleConst().customTextStyle(
                            fontFamily: 'inter',
                            size: 16,
                            fontWeight: FontWeight.w700)),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(311.03.w, 56.h),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                         bottomLeft: Radius.circular(90.r),
                         bottomRight: Radius.circular(90.r),

                        ),
                      ),
                      primary: Color(0xf0F178B6),
                    ),
                  ),

                ],
              ),
            );
          }),
    );
  }
}
