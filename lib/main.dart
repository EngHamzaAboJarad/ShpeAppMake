import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shopemakeup/Provider/auth_block/provider_auth.dart';
import 'package:shopemakeup/Provider/home_block/provider_home.dart';
import 'package:shopemakeup/Screens/Profile/Address.dart';
import 'package:shopemakeup/Screens/Profile/ChangePassword.dart';
import 'package:shopemakeup/Screens/Profile/ChangePhoneNumbe.dart';
import 'package:shopemakeup/Screens/Profile/Language.dart';
import 'package:shopemakeup/Screens/Profile/about_us.dart';
import 'package:shopemakeup/Screens/Profile/ShowAddress.dart';
import 'package:shopemakeup/Screens/Profile/notification%20_setting.dart';
import 'package:shopemakeup/Screens/Profile/setting.dart';
import 'package:shopemakeup/Screens/StatusScreen/eror.dart';
import 'package:shopemakeup/Screens/StatusScreen/orderfailed.dart';
import 'package:shopemakeup/Screens/auth/login_screen.dart';
import 'package:shopemakeup/Screens/auth/sinup_screen.dart';
import 'package:shopemakeup/Screens/home_page.dart';
import 'package:shopemakeup/Screens/lunch_page.dart';
import 'package:shopemakeup/Screens/productScreens/Review.dart';
import 'package:shopemakeup/Screens/productScreens/WriteReview.dart';
import 'package:shopemakeup/Screens/productScreens/detail_product.dart';
import 'package:shopemakeup/Screens/productScreens/prodct_page.dart';
import 'package:shopemakeup/Screens/StatusScreen/success.dart';
import 'package:shopemakeup/sharedPreferences/StooregSharedAuth.dart';
void main(List<String> args) async{
  WidgetsFlutterBinding.ensureInitialized();
  await storegAuthShared().InitialSharedPreferences();
  await Firebase.initializeApp();
   runApp(makup());
}
class   makup extends StatelessWidget {
  const makup({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ProviderAuth>(create: (_)=>ProviderAuth()),
        ChangeNotifierProvider<ProviderHome>(create: (_)=>ProviderHome() )
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: () => MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: 'Lunch_Screen',
          routes: {
            'Lunch_Screen': (context) =>const LunchScreen(),
            '/': (context) => const HomeSecreen(),
            'Login_Screen': (context) => const LoginScreen(),
            'SingUp_Screen': (context) => const SingUpScreen(),
            'ProductPage_Screen': (context) => const ProductPage(),
            'ProductDesc_Screen': (context) => const ProductDesc(),
            'Setting_Screen': (context) => const Setting(),
            'NotificationSetting_Screen': (context) =>const NotificationSetting(),
            'Language_Screen': (context)=>const Language(),
            'Success_Screen': (context)=>const SuccessScreen(),
            'ErrorScreen_Screen': (context)=>const ErrorScreen(),
            'OrderFailedScreen_Screen': (context)=>const OrderFailedScreen(),
            'ChangePhoneNumber_Screen': (context)=>const ChangePhoneNumber(),
            'ChangePassword_Screen': (context)=>const ChangePassword(),
            'ReviewScreen_Screen': (context)=>const ReviewScreen(),
            'WriteReview_Screen': (context)=>const WriteReview(),
            'AboutUs_Screen': (context)=>const AboutUs(),
            'ShowAddress_Screen': (context)=>ShowAddressNew(),
            'AddAddress_Screen': (context)=>const AddAddress(),
          },
        ),
      ),
    );
  }
}
