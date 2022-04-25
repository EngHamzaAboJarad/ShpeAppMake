import 'package:flutter/material.dart';
import 'package:shopemakeup/Screens/BN_Screen/account.dart';
import 'package:shopemakeup/Screens/BN_Screen/cart.dart';
import 'package:shopemakeup/Screens/BN_Screen/category.dart';
import 'package:shopemakeup/Screens/BN_Screen/home.dart';
import 'package:shopemakeup/Screens/BN_Screen/notification.dart';
import 'package:shopemakeup/const/const_text_style.dart';
import 'package:shopemakeup/models/bn_screen_model.dart';

class ProviderHome  extends ChangeNotifier{
   List<bnScreen> HomeScreens = [
    bnScreen(title:   TextStyleConst().titleApp() ,body: HomeScreen()),
    bnScreen(title: null,body: const CategoryScreen()),
    bnScreen(title: const Text('Cart',style: TextStyle(color: Color(0xffF178B6)),), body:  CartScreen()),
    bnScreen(title: null, body: const NotificationScreen()),
    bnScreen(title: null, body: const AccountScreen()),
  ];
    TextEditingController copon = TextEditingController();
  int ChangIndexScreens = 0;
  void SetChangIndexScreens(int i){
    ChangIndexScreens = i;
    notifyListeners();
  }
  PageController pageController = PageController();
  int ChangIndexPage = 0;
  void SetIndexPage(int i){
    ChangIndexPage = i;
    notifyListeners();
  }
  bool Switch1 = false,Switch2 = false,Switch3 = false;
  void setSwitch1(bool v){
     Switch1 = v;
     notifyListeners();
  }
  void setSwitch2(bool v){
     Switch2 = v;
     notifyListeners();
  }
  void setSwitch3(bool v){
     Switch3 = v;
     notifyListeners();
  }
  String language = 'Arabic';
  void setLanguage(String h){
     language = h;
     notifyListeners();
  }
}
