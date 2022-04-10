import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopemakeup/Block/auth_block/bloc_cubit_auth.dart';
import 'package:shopemakeup/const/const_text_style.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(top: 20.0.h, right: 32.h, left: 32.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Account',
              style: TextStyleConst().customTextStyle(
                  fontFamily: 'inter',
                  size: 22,
                  color: Color(0xffEF5DA8),
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 31.h,
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                radius: 64 / 2.r,
                backgroundImage: AssetImage('assets/image1.png'),
              ),
              title: Text(
                'HamzaAboJarad',
                style: TextStyleConst().customTextStyle(
                    fontFamily: 'inter',
                    size: 18,
                    color: Color(0xffEF5DA8),
                    fontWeight: FontWeight.w700),
              ),
              subtitle: Text(
                'habojarad305@gmail.com',
                style: TextStyleConst().customTextStyle(
                    fontFamily: 'inter',
                    size: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.shopping_bag,color: Color(0xffEF5DA8),),backgroundColor: Color(0xffE9E9E9),),
              title: Text('My Orders',style: TextStyleConst().customTextStyle(
                  fontFamily: 'inter',
                  size: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),),
              trailing: IconButton(onPressed: (){},
                  icon: Icon(Icons.arrow_forward_ios)),
            ),
            SizedBox(
              height: 20.h,
            ),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context,'ShowAddress_Screen');
              },
              leading: CircleAvatar(child: Icon(Icons.place,color: Color(0xffEF5DA8),),backgroundColor: Color(0xffE9E9E9),),
              title: Text('Shipping Address',style: TextStyleConst().customTextStyle(
                  fontFamily: 'inter',
                  size: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),),
              trailing: IconButton(onPressed: (){
                Navigator.pushNamed(context,'ShowAddress_Screen');
              },
                  icon: Icon(Icons.arrow_forward_ios)),
            ),
            SizedBox(
              height: 20.h,
            ),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.account_balance_wallet,color: Color(0xffEF5DA8),),backgroundColor: Color(0xffE9E9E9),),
              title: Text('Payment Methods',style: TextStyleConst().customTextStyle(
                  fontFamily: 'inter',
                  size: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),),
              trailing: IconButton(onPressed: (){},
                  icon: Icon(Icons.arrow_forward_ios)),
            ),
            SizedBox(
              height: 20.h,
            ),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context,'Setting_Screen');
              },
              leading: CircleAvatar(child: Icon(Icons.settings,color: Color(0xffEF5DA8),),backgroundColor: Color(0xffE9E9E9),),
              title: Text('Setting',style: TextStyleConst().customTextStyle(
                  fontFamily: 'inter',
                  size: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),),
              trailing: IconButton(onPressed: (){
                Navigator.pushNamed(context,'Setting_Screen');
              },
                  icon: Icon(Icons.arrow_forward_ios)),
            ),
            SizedBox(
              height: 20.h,
            ),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context,'AboutUs_Screen');
              },
              leading: CircleAvatar(child: Icon(Icons.info,color: Color(0xffEF5DA8),),backgroundColor: Color(0xffE9E9E9),),
              title: Text('About The App',style: TextStyleConst().customTextStyle(
                  fontFamily: 'inter',
                  size: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),),
              trailing: IconButton(onPressed: (){
                Navigator.pushNamed(context,'AboutUs_Screen');
              },
                  icon: Icon(Icons.arrow_forward_ios)),
            ),
            SizedBox(
              height: 48.h,
            ),
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<AuthCubitBloc>(context).Logout();
                Navigator.popAndPushNamed(context,'Login_Screen');
              },
              child: Text('Logout',
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
            SizedBox(height: 15.h,)
          ],
        ),
      ),),
    );
  }
}
