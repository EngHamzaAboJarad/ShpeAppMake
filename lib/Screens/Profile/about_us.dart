import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopemakeup/const/const_text.dart';
import 'package:shopemakeup/const/const_text_style.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

//اباوت اتس الي جوا صارت برا TODO
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'About The App',
          style: TextStyleConst().customTextStyle(
              fontFamily: TextsConst().inter,
              size: 16,
              color: Color(0xffF178B6),
              fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading :
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              }, icon:   Icon(Icons.arrow_back_ios,size: 24.sm,))
        ,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.w),
        child: Column(
          children: [
            Spacer(),
            Image.asset('assets/icons/logo.png'),
            Spacer(),
            Text('إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عددإذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عددإذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عددإذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عددإذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد', textAlign: TextAlign.center),
            Spacer(),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(
                    flex: 7,
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      _instagram();
                    },
                    child: Image.asset(
                      'assets/icons/in.png',
                      width: 60,
                      height: 60,
                    ),
                  ),
                  Spacer(),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      _snapchat();
                    },
                    child: Image.asset(
                      'assets/icons/sn.png',
                      width: 60,
                      height: 60,
                    ),
                  ),
                  Spacer(),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      _tiktok();
                    },
                    child: Image.asset(
                      'assets/icons/tik.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  Spacer(),
                  Spacer(
                    flex: 7,
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 4,
            ),
          ],
        ),
      ),
    );
  }

  void _instagram() async {
    if (!await launch('https://instagram.com/chic.shop94?utm_medium=copy_link'))
      throw 'Could not launch ${'https://instagram.com/chic.shop94?utm_medium=copy_link'}';
  }

  void _tiktok() async {
    if (!await launch('https://www.tiktok.com/@chic.shop94'))
      throw 'Could not launch ${'https://www.tiktok.com/@chic.shop94'}';
  }

  void _snapchat() async {
    if (!await launch('https://snapchat.com'))
      throw 'Could not launch ${'https://snapchat.com'}';
  }
}
