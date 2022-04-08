import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopemakeup/Block/auth_block/bloc_status_auth.dart';
import 'package:shopemakeup/Block/home_block/bloc_status_home.dart';
import 'package:shopemakeup/Screens/BN_Screen/account.dart';
import 'package:shopemakeup/Screens/BN_Screen/cart.dart';
import 'package:shopemakeup/Screens/BN_Screen/category.dart';
import 'package:shopemakeup/Screens/BN_Screen/home.dart';
import 'package:shopemakeup/Screens/BN_Screen/notification.dart';
import 'package:shopemakeup/const/const_text_style.dart';
import 'package:shopemakeup/models/bn_screen_model.dart';

class HomeCubitBloc extends Cubit<HomeStatusBloc> {
  HomeCubitBloc() : super(InitStatuss());
  HomeCubitBloc getCubitHome(context) => BlocProvider.of(context);
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
    emit(StatusChangIndexScreens());
  }
  PageController pageController = PageController();
  int ChangIndexPage = 0;
  void SetIndexPage(int i){
    ChangIndexPage = i;
    emit(StatusChangIndexPage());
  }
  bool Switch1 = false,Switch2 = false,Switch3 = false;
  void setSwitch1(bool v){
    emit(StatusSwitch1());
    Switch1 = v;
  }
  void setSwitch2(bool v){
    emit(StatusSwitch2());
    Switch2 = v;
  }
  void setSwitch3(bool v){
    emit(StatusSwitch3());
    Switch3 = v;
  }
  String language = 'Arabic';
  void setLanguage(String h){
    emit(StatusLanguage());
    language = h;
  }
}
