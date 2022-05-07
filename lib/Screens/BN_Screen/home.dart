import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shopemakeup/Provider/home_block/provider_home.dart';
import 'package:shopemakeup/const/const_ItemProduct.dart';
import 'package:shopemakeup/const/const_text.dart';
import 'package:shopemakeup/const/const_text_style.dart';
import 'package:shopemakeup/models/ModelCategory.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
     ProviderHome().getImageSlider();
     super.initState();
  }
 List<QueryDocumentSnapshot>? l;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProviderHome>(
      create: (_) => ProviderHome(),
      builder: (context, state) {
        int p = Provider
            .of<ProviderHome>(context)
            .ChangIndexPage;
        return SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  width: 328.w,
                  height: 192.h,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        childAspectRatio: .5,
                         mainAxisSpacing: 2,
                         crossAxisSpacing: 2
                         // mainAxisSpacing: 328.h,
                    ),
                    itemBuilder: (context,index){
                       return Container(
                         color: Colors.black26,
                         // child: FutureBuilder<String>(
                         //   future:Provider.of<ProviderHome>(context,listen: false).img[index].getDownloadURL(),
                         //   builder:(context,snapshot){
                         //     return Image.network(snapshot.data!);
                         //   },
                         // ),
                       );
                      },itemCount:3 /*Provider.of<ProviderHome>(context,listen: false).img.length*/,
                    ),
              ),
              // Container(
              //   width: 328.w,
              //   height: 192.h,
              //   child: PageView(
              //       controller:
              //       Provider
              //           .of<ProviderHome>(context)
              //           .pageController,
              //       onPageChanged: (int b) {
              //         Provider.of<ProviderHome>(context, listen: false)
              //             .SetIndexPage(b);
              //       },
              //       children:[
              //         Provider.of<ProviderHome>(context, listen: false)
              //             .img[0],
              //         Provider.of<ProviderHome>(context, listen: false)
              //             .img[1],
              //         Provider.of<ProviderHome>(context, listen: false)
              //             .img[2]
              //       ]
              //       // [
              //         // Padding(
              //         //     padding: EdgeInsets.only(left: 8.0.h),
              //         //     child: Container(
              //         //       decoration: BoxDecoration(
              //         //           borderRadius: BorderRadius.circular(24.r)),
              //         //       child: FutureBuilder<String>(
              //         //         future:  Provider.of<ProviderHome>(context, listen: false)
              //         //             .img[0].getDownloadURL(),
              //         //         builder: (context,s){
              //         //           return Image.network(s.data!);
              //         //         },
              //         //       )
              //         //     )
              //         // )
              //       // ]
              //   ),
              // ),
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
                      onTap: () {
                        Provider.of<ProviderHome>(context, listen: false)
                            .SetChangIndexScreens(1);
                      },
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
                child: StreamBuilder<QuerySnapshot>(
                    stream: Provider.of<ProviderHome>(context).getCategory(),
                     builder:(context,snapshot){
                      List<QueryDocumentSnapshot> l = snapshot.data!.docs;
                       return   ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: l.length,
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
                                          image: NetworkImage(snapshot.data!.docs[index].get('image')),
                                          fit: BoxFit.cover,
                                          filterQuality: FilterQuality.high),
                                      borderRadius: BorderRadius.circular(59.r)),
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                Text('${snapshot.data!.docs[index].get('name_ar')}',
                                    style: TextStyleConst().customTextStyle(
                                        fontFamily: TextsConst().inter,
                                        size: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),);
                      },
                    );
                  })
    ),
                // child: ListView.builder(
                //   scrollDirection: Axis.horizontal,
                //   itemCount: 5,
                //   itemBuilder: (context, index) {
                //     return Padding(
                //       padding: EdgeInsets.only(left: 24.h),
                //       child: Column(
                //         children: [
                //           Container(
                //             width: 64.w,
                //             height: 64.h,
                //             decoration: BoxDecoration(
                //                 boxShadow: [
                //                   BoxShadow(
                //                       color: Colors.black.withAlpha(40),
                //                       offset: Offset(4, 3),
                //                       blurRadius: 6)
                //                 ],
                //                 image: DecorationImage(
                //                     image: AssetImage('assets/image1.png'),
                //                     fit: BoxFit.cover,
                //                     filterQuality: FilterQuality.high),
                //                 borderRadius: BorderRadius.circular(59.r)),
                //           ),
                //           SizedBox(
                //             height: 8.h,
                //           ),
                //           Text('ItemName',
                //               style: TextStyleConst().customTextStyle(
                //                   fontFamily: TextsConst().inter,
                //                   size: 12,
                //                   color: Colors.black,
                //                   fontWeight: FontWeight.w500)),
                //         ],
                //       ),
                //     );
                //   },
                // ),

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
    );
  }
}
