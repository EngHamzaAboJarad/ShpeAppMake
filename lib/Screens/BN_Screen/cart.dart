import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shopemakeup/Provider/home_block/provider_home.dart';
import 'package:shopemakeup/const/const_text.dart';
import 'package:shopemakeup/const/const_text_filed.dart';
import 'package:shopemakeup/const/const_text_style.dart';

void doNothing(BuildContext context) {}

class CartScreen extends StatelessWidget {
  int i = 0;
  List<Container> d = [
    Container(
      width: 311.w,
      height: 96.h,
      child: Row(
        children: [
          Container(
            width: 84.w,
            height: 92.h,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image9.png'), fit: BoxFit.cover)),
          ),
          SizedBox(
            width: 5.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Adidas Terrex Graphic Tee',
                style: TextStyleConst().customTextStyle(
                    fontFamily: TextsConst().inter,
                    size: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
              Row(
                children: [
                  Text('Rp 450.000'),
                  SizedBox(
                    width: 73.w,
                  ),
                  Container(
                    width: 20.w,
                    height: 20.h,
                    child: FloatingActionButton(
                      onPressed: () {},
                      tooltip: 'Remove',
                      elevation: 0,
                      mini: true,
                      child: Icon(
                        Icons.remove,
                        size: 16.sp,
                        color: Colors.white,
                      ),
                      backgroundColor: const Color(0xffE9EDFF),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text('1'),
                  SizedBox(
                    width: 5.w,
                  ),
                  Container(
                    width: 20.w,
                    height: 20.h,
                    child: FloatingActionButton(
                        onPressed: () {},
                        tooltip: 'Add',
                        elevation: 0,
                        mini: true,
                        child: Icon(
                          Icons.add,
                          size: 16.sp,
                          color: Colors.white,
                        ),
                        backgroundColor: Colors.black),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    ),
    Container(
      width: 311.w,
      height: 96.h,
      child: Row(
        children: [
          Container(
            width: 84.w,
            height: 92.h,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image9.png'), fit: BoxFit.cover)),
          ),
          SizedBox(
            width: 5.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Adidas Terrex Graphic Tee',
                style: TextStyleConst().customTextStyle(
                    fontFamily: TextsConst().inter,
                    size: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
              Row(
                children: [
                  Text('Rp 450.000'),
                  SizedBox(
                    width: 73.w,
                  ),
                  Container(
                    width: 20.w,
                    height: 20.h,
                    child: FloatingActionButton(
                      onPressed: () {},
                      tooltip: 'Remove',
                      elevation: 0,
                      mini: true,
                      child: Icon(
                        Icons.remove,
                        size: 16.sp,
                        color: Colors.white,
                      ),
                      backgroundColor: const Color(0xffE9EDFF),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text('1'),
                  SizedBox(
                    width: 5.w,
                  ),
                  Container(
                    width: 20.w,
                    height: 20.h,
                    child: FloatingActionButton(
                        onPressed: () {},
                        tooltip: 'Add',
                        elevation: 0,
                        mini: true,
                        child: Icon(
                          Icons.add,
                          size: 16.sp,
                          color: Colors.white,
                        ),
                        backgroundColor: Colors.black),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    ),
    Container(
      width: 311.w,
      height: 96.h,
      child: Row(
        children: [
          Container(
            width: 84.w,
            height: 92.h,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image9.png'), fit: BoxFit.cover)),
          ),
          SizedBox(
            width: 5.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Adidas Terrex Graphic Tee',
                style: TextStyleConst().customTextStyle(
                    fontFamily: TextsConst().inter,
                    size: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
              Row(
                children: [
                  Text('Rp 450.000'),
                  SizedBox(
                    width: 73.w,
                  ),
                  Container(
                    width: 20.w,
                    height: 20.h,
                    child: FloatingActionButton(
                      onPressed: () {},
                      tooltip: 'Remove',
                      elevation: 0,
                      mini: true,
                      child: Icon(
                        Icons.remove,
                        size: 16.sp,
                        color: Colors.white,
                      ),
                      backgroundColor: const Color(0xffE9EDFF),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text('1'),
                  SizedBox(
                    width: 5.w,
                  ),
                  Container(
                    width: 20.w,
                    height: 20.h,
                    child: FloatingActionButton(
                        onPressed: () {},
                        tooltip: 'Add',
                        elevation: 0,
                        mini: true,
                        child: Icon(
                          Icons.add,
                          size: 16.sp,
                          color: Colors.white,
                        ),
                        backgroundColor: Colors.black),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    ),
    Container(
      width: 311.w,
      height: 96.h,
      child: Row(
        children: [
          Container(
            width: 84.w,
            height: 92.h,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image9.png'), fit: BoxFit.cover)),
          ),
          SizedBox(
            width: 5.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Adidas Terrex Graphic Tee',
                style: TextStyleConst().customTextStyle(
                    fontFamily: TextsConst().inter,
                    size: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
              Row(
                children: [
                  Text('Rp 450.000'),
                  SizedBox(
                    width: 73.w,
                  ),
                  Container(
                    width: 20.w,
                    height: 20.h,
                    child: FloatingActionButton(
                      onPressed: () {},
                      tooltip: 'Remove',
                      elevation: 0,
                      mini: true,
                      child: Icon(
                        Icons.remove,
                        size: 16.sp,
                        color: Colors.white,
                      ),
                      backgroundColor: const Color(0xffE9EDFF),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text('1'),
                  SizedBox(
                    width: 5.w,
                  ),
                  Container(
                    width: 20.w,
                    height: 20.h,
                    child: FloatingActionButton(
                        onPressed: () {},
                        tooltip: 'Add',
                        elevation: 0,
                        mini: true,
                        child: Icon(
                          Icons.add,
                          size: 16.sp,
                          color: Colors.white,
                        ),
                        backgroundColor: Colors.black),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    ),
  ];
  void Function(BuildContext)? g;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.h),
        child: Column(
          children: [
            Container(
               width: double.infinity.w,
              height: 390,
              child: ListView.builder(

                itemCount: d.length,
                itemBuilder: (context, index) {
                  final it = d[index];
                  return Padding(
                    padding: EdgeInsets.only(bottom: 15.h),
                    child: Dismissible(
                      key: Key(it.toString()),
                      behavior: HitTestBehavior.opaque,
                      direction: DismissDirection.endToStart,
                      // secondaryBackground: Container(
                      //     alignment: Alignment.centerRight,
                      //     width: 50.w,
                      //     height: 50.h,
                      //     color: Colors.red,
                      //     child: IconButton(
                      //         onPressed: () {},
                      //         icon: Icon(
                      //           Icons.delete_outline,
                      //           color: Colors.white,
                      //         ))),
                      // background: Container(
                      //     alignment: Alignment.centerLeft,
                      //     width: 50.w,
                      //     height: 50.h,
                      //     color: Colors.green[700],
                      //     child: IconButton(onPressed: () {}, icon: Icon(Icons.check))),
                      background: Container(
                          alignment: Alignment.centerRight,
                          width: 50.w,
                          height: 50.h,
                          color: Color(0xffF178B6),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.delete_outline,
                                color: Colors.white,
                              ))),
                      confirmDismiss: (DismissDirection direction) async {
                        if (direction == DismissDirection.endToStart) {
                          return await showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text("Delete Confirmation"),
                                content: const Text(
                                    "Are you sure you want to delete this item?"),
                                actions: <Widget>[
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop(true);
                                        d.remove(index);
                                      },
                                      child: const Text("Delete")),
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.of(context).pop(false),
                                    child: const Text("Cancel"),
                                  ),
                                ],
                              );
                            },
                          );
                        } else {
                          return await showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text("add Confirmation"),
                                content: const Text(
                                    "Are you sure you want to add this item?"),
                                actions: <Widget>[
                                  TextButton(
                                      onPressed: () =>
                                          Navigator.of(context).pop(true),
                                      child: const Text("add")),
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.of(context).pop(false),
                                    child: const Text("Cancel"),
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      },
                      child: d[index],
                    ),
                  );
                },
              ),
            ),
            Container(
              width: 311.w,
              height: 246.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  text_filed().TEXTINPUT(
                    controller: Provider.of<ProviderHome>(context).copon,
                    keyboardType: TextInputType.text,
                    obscureText: false,
                    hintText: 'Enter Coupon Code',
                    suffixIcon: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xf0F178B6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(90.r),
                          )),
                      child: Text(
                        'Apply',
                        style: TextStyleConst().customTextStyle(
                            fontFamily: 'inter',
                            size: 16,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Items (3 items)',
                        style: TextStyleConst().customTextStyle(
                            fontFamily: TextsConst().inter,
                            size: 14,
                            color: Colors.black26,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'Rp 1.400.000',
                        style: TextStyleConst().customTextStyle(
                            fontFamily: TextsConst().inter,
                            size: 14,
                            color: Colors.black26,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shipping',
                        style: TextStyleConst().customTextStyle(
                            fontFamily: TextsConst().inter,
                            size: 14,
                            color: Colors.black26,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'Rp 15.000',
                        style: TextStyleConst().customTextStyle(
                            fontFamily: TextsConst().inter,
                            size: 14,
                            color: Colors.black26,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: TextStyleConst().customTextStyle(
                            fontFamily: TextsConst().inter,
                            size: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'Rp 450.000',
                        style: TextStyleConst().customTextStyle(
                            fontFamily: TextsConst().inter,
                            size: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.popAndPushNamed(context,'Login_Screen');
                    },
                    child: Text('Checkout',
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
          ],
        ),
      ),
    );
  }
}
/**
 * 
 * Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/emptycart.png',width: 400,height: 400 ,),
        Text('🥰 The cart is empty go shopping 🥰', style: TextStyleConst().customTextStyle(
            fontFamily: TextsConst().inter,
            size: 18,
            color: Color(0xffF178B6),
            fontWeight: FontWeight.w700),)
      ],
    );

 */

//Dis
/*
/ Dismissible(
            key: Key(it.toString()),
            behavior: HitTestBehavior.opaque,
            direction: DismissDirection.endToStart,
            // secondaryBackground: Container(
            //     alignment: Alignment.centerRight,
            //     width: 50.w,
            //     height: 50.h,
            //     color: Colors.red,
            //     child: IconButton(
            //         onPressed: () {},
            //         icon: Icon(
            //           Icons.delete_outline,
            //           color: Colors.white,
            //         ))),
            // background: Container(
            //     alignment: Alignment.centerLeft,
            //     width: 50.w,
            //     height: 50.h,
            //     color: Colors.green[700],
            //     child: IconButton(onPressed: () {}, icon: Icon(Icons.check))),
            background: Container(
                alignment: Alignment.centerRight,
                width: 50.w,
                height: 50.h,
                color: Color(0xffF178B6),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete_outline,
                      color: Colors.white,
                    ))),
            confirmDismiss: (DismissDirection direction) async {
              if (direction == DismissDirection.endToStart) {
                return await showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text("Delete Confirmation"),
                      content: const Text(
                          "Are you sure you want to delete this item?"),
                      actions: <Widget>[
                        FlatButton(
                            onPressed: () => Navigator.of(context).pop(true),
                            child: const Text("Delete")),
                        FlatButton(
                          onPressed: () => Navigator.of(context).pop(false),
                          child: const Text("Cancel"),
                        ),
                      ],
                    );
                  },
                );
              } else {
                return await showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text("add Confirmation"),
                      content:
                          const Text("Are you sure you want to add this item?"),
                      actions: <Widget>[
                        FlatButton(
                            onPressed: () => Navigator.of(context).pop(true),
                            child: const Text("add")),
                        FlatButton(
                          onPressed: () => Navigator.of(context).pop(false),
                          child: const Text("Cancel"),
                        ),
                      ],
                    );
                  },
                );
              }
            },
            child: d[index],
          );
        
// */

/**
 * 
 * Container(
      width: 311.w,
      height: 96.h,
      child: Row(
        children: [
          Container(
            width: 84.w,
            height: 92.h,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image9.png'), fit: BoxFit.cover)),
          ),
          SizedBox(
            width: 5.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Adidas Terrex Graphic Tee',
                style: TextStyleConst().customTextStyle(
                    fontFamily: TextsConst().inter,
                    size: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
              Row(
                children: [
                  Text('Rp 450.000'),
                  SizedBox(
                    width: 73.w,
                  ),
                  Container(
                    width: 24.w,
                    height: 24.h,
                    child: FloatingActionButton(
                      onPressed: () {},
                      tooltip: 'Remove',
                      elevation: 0,
                      mini: true,
                      child: Icon(
                        Icons.remove,
                        size: 16.sp,
                        color: Colors.white,
                      ),
                      backgroundColor: const Color(0xffE9EDFF),
                    ),
                  ),
                  SizedBox(
                    width: 11.w,
                  ),
                  Text('1'),
                  SizedBox(
                    width: 11.w,
                  ),
                  Container(
                    width: 24.w,
                    height: 24.h,
                    child: FloatingActionButton(
                        onPressed: () {},
                        tooltip: 'Add',
                        elevation: 0,
                        mini: true,
                        child: Icon(
                          Icons.add,
                          size: 16.sp,
                          color: Colors.white,
                        ),
                        backgroundColor: Colors.black),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  
 * 
 * 
 */
