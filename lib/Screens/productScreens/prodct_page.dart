import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopemakeup/Block/home_block/bloc_cubit_home.dart';
import '../../const/const_text.dart';
import '../../const/const_text_style.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Hoodies',
          style: TextStyleConst().customTextStyle(
              fontFamily: TextsConst().inter,
              size: 16,
              color: Color(0xffF178B6),
              fontWeight: FontWeight.w700),
        ),
        leading: IconButton(
          onPressed: (){
            Navigator.popAndPushNamed(context,'/');
            BlocProvider.of<HomeCubitBloc>(context).SetChangIndexScreens(1);
          },
          icon: Icon(Icons.arrow_back_ios,color: Colors.black,size: 24.w,),
        ),
        actions: [
          IconButton(onPressed: () {
            //TODO METHOD Search in Page_Product
          }, icon: Image.asset('assets/icons/Search.png'))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.h,vertical: 24.h),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: (144 / 240).h,
                crossAxisSpacing: 23.w,
                mainAxisSpacing: 24.h),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context,'ProductDesc_Screen');
                    },
                    child: Container(
                      width: 144.w,
                      height: 190.h,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withAlpha(40),
                                offset: Offset(4, 3),
                                blurRadius: 6)
                          ],
                          image: DecorationImage(
                              image: AssetImage('assets/image 10.png'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(24.r),
                          color: Colors.black54),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Center(
                              child: Text(
                                '45\$',
                                style: TextStyleConst().customTextStyle(
                                    fontFamily: TextsConst().inter,
                                    size: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            width: 45.w,
                            height: 45.h,
                            decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24.r),
                                bottomRight: Radius.circular(24.r),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Text(
                          'E.Embriodered',
                          style: TextStyleConst().customTextStyle(
                              fontFamily: TextsConst().inter,
                              size: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add_circle_rounded),
                        iconSize: 30.w,
                        color: Colors.pinkAccent,
                      )
                    ],
                  ),
                ],
              );
            }),
      ),
    );
  }
}
