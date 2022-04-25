import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopemakeup/const/const_text.dart';
import 'package:shopemakeup/const/const_text_style.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({Key? key}) : super(key: key);

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
            size: 24.sm,
          ),
        ),
        automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          'Review',
          style: TextStyleConst().customTextStyle(
              fontFamily: TextsConst().inter,
              size: 16,
              color: Color(0xffF178B6),
              fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                ),
                Container(
                  width: 310.w,
                  height: 90.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 64.w,
                        height: 100.h,
                        child: Column(
                           children: [
                            Row(
                              children: [
                                Text(
                                  '4.8',
                                  style: TextStyleConst().customTextStyle(
                                      fontFamily: TextsConst().inter,
                                      size: 24,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0.h),
                                  child: Text(' / 5',
                                      style: TextStyleConst().customTextStyle(
                                          fontFamily: TextsConst().inter,
                                          size: 12,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700)),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 13.sm,
                                  color: Color(0xffFFC400),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 13.sm,
                                  color: Color(0xffFFC400),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 13.sm,
                                  color: Color(0xffFFC400),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 13.sm,
                                  color: Color(0xffFFC400),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 13.sm,
                                  color: Color(0xffFFC400),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  '86',
                                  style: TextStyleConst().customTextStyle(
                                      fontFamily: TextsConst().inter,
                                      size: 12,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Review',
                                  style: TextStyleConst().customTextStyle(
                                      fontFamily: TextsConst().inter,
                                      size: 12,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 221.w,
                        height: 90.h,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '5 Stars',
                                  style: TextStyleConst().customTextStyle(
                                      fontFamily: TextsConst().inter,
                                      size: 12,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500),
                                ),
                                Container(
                                  width: 144.w,
                                  height: 3.h,
                                  clipBehavior: Clip.antiAlias,
                                  child: Divider(
                                    color: Color(0xffFFC400),
                                    thickness: 3.h,
                                    endIndent: 20,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(15.r)),
                                ),
                                Text(
                                  '76',
                                  style: TextStyleConst().customTextStyle(
                                      fontFamily: TextsConst().inter,
                                      size: 12,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '4 Stars',
                                  style: TextStyleConst().customTextStyle(
                                      fontFamily: TextsConst().inter,
                                      size: 12,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500),
                                ),
                                Container(
                                  width: 144.w,
                                  height: 3.h,
                                  clipBehavior: Clip.antiAlias,
                                  child: Divider(
                                    color: Color(0xffFFC400),
                                    thickness: 3.h,
                                    endIndent: 120.h,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(15.r)),
                                ),
                                Text(
                                  '08',
                                  style: TextStyleConst().customTextStyle(
                                      fontFamily: TextsConst().inter,
                                      size: 12,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '3 Stars',
                                  style: TextStyleConst().customTextStyle(
                                      fontFamily: TextsConst().inter,
                                      size: 12,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500),
                                ),
                                Container(
                                  width: 144.w,
                                  height: 3.h,
                                  clipBehavior: Clip.antiAlias,
                                  child: Divider(
                                    color: Color(0xffFFC400),
                                    thickness: 3.h,
                                    endIndent: 140.h,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(15.r)),
                                ),
                                Text(
                                  '02',
                                  style: TextStyleConst().customTextStyle(
                                      fontFamily: TextsConst().inter,
                                      size: 12,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '2 Stars',
                                  style: TextStyleConst().customTextStyle(
                                      fontFamily: TextsConst().inter,
                                      size: 12,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500),
                                ),
                                Container(
                                  width: 144.w,
                                  height: 3.h,
                                  clipBehavior: Clip.antiAlias,
                                  child: Divider(
                                    color: Color(0xffFFC400),
                                    thickness: 3.h,
                                    endIndent: 152.h,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(15.r)),
                                ),
                                Text(
                                  '00',
                                  style: TextStyleConst().customTextStyle(
                                      fontFamily: TextsConst().inter,
                                      size: 12,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '1 Stars',
                                  style: TextStyleConst().customTextStyle(
                                      fontFamily: TextsConst().inter,
                                      size: 12,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500),
                                ),
                                Container(
                                  width: 144.w,
                                  height: 3.h,
                                  clipBehavior: Clip.antiAlias,
                                  child: Divider(
                                    color: Color(0xffFFC400),
                                    thickness: 3.h,
                                    endIndent: 152.h,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(15.r)),
                                ),
                                Text(
                                  '00',
                                  style: TextStyleConst().customTextStyle(
                                      fontFamily: TextsConst().inter,
                                      size: 12,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
               Divider()   ,
                ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context,'WriteReview_Screen');
                },
                     child:   Text ( '+ Add Review',style: TextStyleConst().customTextStyle(
                         fontFamily: TextsConst().inter,
                         size: 15,
                         color: Colors.white,
                         fontWeight: FontWeight.w700),),
                   style: ElevatedButton.styleFrom(
                     minimumSize: Size(175.w,45.h),
                     primary: Color(0xffF178B6),
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.only(
                         topRight: Radius.circular(25.r),
                         bottomLeft: Radius.circular(25.r),
                       )
                     )
                   ),
                 ),
                Divider()   ,
                Container(
                    width: double.infinity,
                    height: 540.h,
                     child: ListView.separated(
                        itemBuilder: (context, index) {
                          return Container(
                            width: 311.w,
                            height: 199.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: 20.r,
                                  backgroundColor: Colors.transparent,
                                  backgroundImage:
                                      AssetImage('assets/image9.png'),
                                ),
                                Container(
                                  width: 263.w,
                                  height: 199.h,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Courtney Henry',
                                            style: TextStyleConst()
                                                .customTextStyle(
                                                    fontFamily:
                                                        TextsConst().inter,
                                                    size: 12,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w700),
                                          ),
                                          Text('2 days ago')
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            size: 13.sm,
                                            color: Color(0xffFFC400),
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 13.sm,
                                            color: Color(0xffFFC400),
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 13.sm,
                                            color: Color(0xffFFC400),
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 13.sm,
                                            color: Color(0xffFFC400),
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 13.sm,
                                            color: Color(0xffFFC400),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 263.w,
                                        height: 135.h,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade300,
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20.r),
                                            bottomLeft: Radius.circular(20.r),
                                            bottomRight: Radius.circular(20.r),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.h, vertical: 16.0.h),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              children: [
                                                Container(
                                                  child: Text(
                                                    'sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssLoremsssssssssssssssssssssssssssssssLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
                                                    style: TextStyleConst()
                                                        .customTextStyle(
                                                            fontFamily:
                                                                TextsConst()
                                                                    .inter,
                                                            size: 12,
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.w700),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Image.asset(
                                            'assets/icons/lik.png',
                                            width: 18.w,
                                            height: 18.h,
                                          ),
                                          Text(
                                            ' 8',
                                            style: TextStyleConst()
                                                .customTextStyle(
                                                    fontFamily:
                                                        TextsConst().inter,
                                                    size: 12,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w700),
                                          ),
                                          SizedBox(
                                            width: 17.w,
                                          ),
                                          Image.asset(
                                            'assets/icons/dlik.png',
                                            width: 18.w,
                                            height: 18.h,
                                          ),
                                          Text(
                                            ' 2',
                                            style: TextStyleConst()
                                                .customTextStyle(
                                                    fontFamily:
                                                        TextsConst().inter,
                                                    size: 12,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w700),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Divider(
                            thickness: 2,
                            endIndent: 11,
                            indent: 11,
                          );
                        },
                        itemCount: 10))
              ],
            ),
            Positioned(
              bottom: 21.h,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context,'ProductDesc_Screen');
                },
                child: Text(
                  'Details',
                  style: TextStyleConst().customTextStyle(
                      fontFamily: TextsConst().inter,
                      size: 20,
                      color: Color(0xffF178B6),
                      fontWeight: FontWeight.w500),
                ),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(200.w,50.h),
                    primary: Colors.white,
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
              bottom: 21.h,
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
                      color: Colors.white,
                      fontWeight: FontWeight.w500),

                ),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(200.w,50.h),
                    primary: Color(0xffF178B6),
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
//Container(
//                       width: 311.w,
//                       height: 199.h,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Row(
//                               children: [
//                               CircleAvatar(
//                                 radius: 20.r,
//                                 backgroundImage:
//                                     AssetImage('assets/image9.png'),
//                               ),
//                               SizedBox(width: 16.w,),
//                               Container(
//                                 width: 263.w,
//                                 height: 31.h,
//                                 child: Column(
//                                   children: [
//                                     Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceBetween,
//                                       children: [
//                                         Text(
//                                           'Courtney Henry',
//                                           style: TextStyleConst()
//                                               .customTextStyle(
//                                                   fontFamily:
//                                                       TextsConst().inter,
//                                                   size: 12,
//                                                   color: Colors.black,
//                                                   fontWeight: FontWeight.w700),
//                                         ),
//                                         Text('2 days ago')
//                                       ],
//                                     ),
//                                     Row(
//                                       children: [
//                                         Icon(
//                                           Icons.star,
//                                           size: 10.sm,
//                                           color: Color(0xffFFC400),
//                                         ),
//                                         Icon(
//                                           Icons.star,
//                                           size: 10.sm,
//                                           color: Color(0xffFFC400),
//                                         ),
//                                         Icon(
//                                           Icons.star,
//                                           size: 10.sm,
//                                           color: Color(0xffFFC400),
//                                         ),
//                                         Icon(
//                                           Icons.star,
//                                           size: 10.sm,
//                                           color: Color(0xffFFC400),
//                                         ),
//                                         Icon(
//                                           Icons.star,
//                                           size: 10.sm,
//                                           color: Color(0xffFFC400),
//                                         ),
//                                       ],
//                                     )
//                                   ],
//                                 ),
//                               )
//                             ],
//                           ),
//
//                           Container(
//                             width: 263.w,
//                             height: 135.h,
//                             decoration: BoxDecoration(
//                               color: Colors.grey.shade300,
//                               borderRadius: BorderRadius.only(
//                                 topRight: Radius.circular(20.r),
//                                 bottomLeft: Radius.circular(20.r),
//                                 bottomRight: Radius.circular(20.r),
//                               ),
//                             ),
//                             child: Padding(
//                               padding: EdgeInsets.symmetric(
//                                   horizontal: 10.h, vertical: 16.0.h),
//                               child: SingleChildScrollView(
//                                 child: Column(
//                                   children: [
//                                     Container(
//                                       child: Text(
//                                         'sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssLoremsssssssssssssssssssssssssssssssLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
//                                         style: TextStyleConst().customTextStyle(
//                                             fontFamily: TextsConst().inter,
//                                             size: 12,
//                                             color: Colors.black,
//                                             fontWeight: FontWeight.w700),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             children: [
//                               Image.asset(
//                                 'assets/icons/lik.png',
//                                 width: 18.w,
//                                 height: 18.h,
//                               ),
//                               Text(
//                                 ' 8',
//                                 style: TextStyleConst().customTextStyle(
//                                     fontFamily: TextsConst().inter,
//                                     size: 12,
//                                     color: Colors.black,
//                                     fontWeight: FontWeight.w700),
//                               ),
//                               SizedBox(
//                                 width: 17.w,
//                               ),
//                               Image.asset(
//                                 'assets/icons/commit.png',
//                                 width: 18.w,
//                                 height: 18.h,
//                               ),
//                               Text(
//                                 ' 2',
//                                 style: TextStyleConst().customTextStyle(
//                                     fontFamily: TextsConst().inter,
//                                     size: 12,
//                                     color: Colors.black,
//                                     fontWeight: FontWeight.w700),
//                               )
//                             ],
//                           )
//                         ],
//                       ),
//                     );
