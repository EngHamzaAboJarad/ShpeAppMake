 import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopemakeup/const/const_text.dart';
import 'package:shopemakeup/const/const_text_filed.dart';
import 'package:shopemakeup/const/const_text_style.dart';

class WriteReview extends StatefulWidget {
  const WriteReview({Key? key}) : super(key: key);

  @override
  State<WriteReview> createState() => _WriteReviewState();
}

class _WriteReviewState extends State<WriteReview> {
  late TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
          'Write a Review',
          style: TextStyleConst().customTextStyle(
              fontFamily: TextsConst().inter,
              size: 16,
              color: Color(0xffF178B6),
              fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.h,vertical: 32.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 64.w,
                    height: 70.62.h,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/image8.png'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(12.r)),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Adidas Trefoil Hoodie',
                        style: TextStyleConst().customTextStyle(
                            fontFamily: TextsConst().inter,
                            size: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'Category : blunder | Price : 25\$',
                        style: TextStyleConst().customTextStyle(
                            fontFamily: TextsConst().inter,
                            size: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                        maxLines: 1,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                width: 284.w,
                height: 78.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Give your rating for this product',
                      style: TextStyleConst().customTextStyle(
                          fontFamily: TextsConst().inter,
                          size: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.star_border,
                          size: 40.sm,
                          color: Color(0xffFFC400),
                        ),
                        Icon(
                          Icons.star_border,
                          size: 40.sm,
                          color: Color(0xffFFC400),
                        ),
                        Icon(
                          Icons.star_border,
                          size: 40.sm,
                          color: Color(0xffFFC400),
                        ),
                        Icon(
                          Icons.star_border,
                          size: 40.sm,
                          color: Color(0xffFFC400),
                        ),
                        Icon(
                          Icons.star_border,
                          size: 40.sm,
                          color: Color(0xffFFC400),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 35.h,
              ),
              Container(
                width: 311.w,
                height: 99.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Add some photo',
                      style: TextStyleConst().customTextStyle(
                          fontFamily: TextsConst().inter,
                          size: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                    Container(
                      width: double.infinity.w,
                      height: 66.h,
                      decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 2.w),
                      borderRadius: BorderRadius.circular(16.r)),
                      child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.photo), Text('Add photo')],
                    ),
                      ),
                    )
                    ,
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                width: 311.w,
                height: 163.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Leave your comment',
                      style: TextStyleConst().customTextStyle(
                          fontFamily: TextsConst().inter,
                          size: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                    text_filed().TEXTINPUT(
                        controller: controller,
                        keyboardType: TextInputType.text,
                        obscureText: false,
                        hintText: 'Write here',
                        lineCount: 4),
                  ],
                ),
              ),
              SizedBox(
                height: 64.h,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Submit',
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
      ),
    );
  }
}
