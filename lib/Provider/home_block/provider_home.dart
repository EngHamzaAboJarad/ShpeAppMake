import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopemakeup/FirebaseController/FirebaseStorg.dart';
import 'package:shopemakeup/FirebaseController/FirestoreController.dart';
import 'package:shopemakeup/Screens/BN_Screen/account.dart';
import 'package:shopemakeup/Screens/BN_Screen/cart.dart';
import 'package:shopemakeup/Screens/BN_Screen/category.dart';
import 'package:shopemakeup/Screens/BN_Screen/home.dart';
import 'package:shopemakeup/Screens/BN_Screen/notification.dart';
import 'package:shopemakeup/const/const_text_style.dart';
import 'package:shopemakeup/models/ModelCategory.dart';
import 'package:shopemakeup/models/bn_screen_model.dart';

class ProviderHome extends ChangeNotifier {
  List<bnScreen> HomeScreens = [
    bnScreen(title: TextStyleConst().titleApp(), body: HomeScreen()),
    bnScreen(title: null, body: const CategoryScreen()),
    bnScreen(
        title: const Text(
          'Cart',
          style: TextStyle(color: Color(0xffF178B6)),
        ),
        body: CartScreen()),
    bnScreen(title: null, body: const NotificationScreen()),
    bnScreen(title: null, body: const AccountScreen()),
  ];
  TextEditingController copon = TextEditingController();
  int ChangIndexScreens = 0;

  void SetChangIndexScreens(int i) {
    ChangIndexScreens = i;
    notifyListeners();
  }

  PageController pageController = PageController();
  int ChangIndexPage = 0;

  void SetIndexPage(int i) {
    ChangIndexPage = i;
    notifyListeners();
  }

  bool Switch1 = false,
      Switch2 = false,
      Switch3 = false;

  void setSwitch1(bool v) {
    Switch1 = v;
    notifyListeners();
  }

  void setSwitch2(bool v) {
    Switch2 = v;
    notifyListeners();
  }

  void setSwitch3(bool v) {
    Switch3 = v;
    notifyListeners();
  }

  String language = 'Arabic';

  void setLanguage(String h) {
    language = h;
    notifyListeners();
  }

  final FirebaseStorage _firebaseStorage = FirebaseStorage.instance;
  List<Reference>  img = <Reference>[];
   Future<void> getImageSlider() async {
     var imgaseget = await firebaseStorges().getImages();
     img = imgaseget;
      // for(int i =0 ; i < imgaseget.length ; i ++ ){
      //   log((await imgaseget[i].getDownloadURL()).toString());
      //  String o = await imgaseget[i].getDownloadURL().toString();
      //    img.add(Padding(
      //        padding: EdgeInsets.only(left: 8.0.h),
      //        child: Container(
      //          decoration: BoxDecoration(
      //              borderRadius: BorderRadius.circular(24.r)),
      //          child: Image.network( (await imgaseget[i].getDownloadURL()).toString()),
      //        ))
      //    );
      // }
      notifyListeners();
  }
    Stream<QuerySnapshot> getCategory()async*{
      notifyListeners();
      yield* FirestoreController().getCategory();
   }
}
