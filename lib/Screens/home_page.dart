import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopemakeup/Block/home_block/bloc_cubit_home.dart';
import 'package:shopemakeup/Block/home_block/bloc_status_home.dart';

class HomeSecreen extends StatelessWidget {
  const HomeSecreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubitBloc, HomeStatusBloc>(
        listener: (context, state) {},
        builder: (context, state) {
          int index = BlocProvider.of<HomeCubitBloc>(context).ChangIndexScreens;
          return Scaffold(
            body: Scaffold(
              appBar:BlocProvider.of<HomeCubitBloc>(context).ChangIndexScreens != 1
                     &&BlocProvider.of<HomeCubitBloc>(context).ChangIndexScreens != 3?AppBar(
                actions: [
                  BlocProvider.of<HomeCubitBloc>(context).ChangIndexScreens == 0
                      ? GestureDetector(
                          onTap: () {},
                          child: Image.asset('assets/icons/Search.png'),
                        )
                      : const Text('')
                ],
                elevation: 0,
                backgroundColor: Colors.transparent,
                title: BlocProvider.of<HomeCubitBloc>(context)
                    .HomeScreens
                    .elementAt(index)
                    .title,
                centerTitle: true,
              ):null,
              bottomNavigationBar: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  selectedItemColor: Color(0xffF178B6),
                  unselectedItemColor: Color(0xffC4C4C4),
                  currentIndex: index,
                  onTap: (value) {
                    BlocProvider.of<HomeCubitBloc>(context)
                        .SetChangIndexScreens(value);
                  },
                  items: [
                    BottomNavigationBarItem(
                        icon: Image.asset(
                          index == 0
                              ? 'assets/icons/home.png'
                              : 'assets/icons/home1.png',
                          color: index == 0
                              ? Color(0xffF178B6)
                              : Color(0xffC4C4C4),
                          width: 20.w,
                          height: 20.h,
                        ),
                        label: 'Home'),
                    BottomNavigationBarItem(
                        icon: Image.asset(
                          index == 1
                              ? 'assets/icons/category2.png'
                              : 'assets/icons/category.png',
                          color: index == 1
                              ? Color(0xffF178B6)
                              : Color(0xffC4C4C4),
                          width: 20.w,
                          height: 20.h,
                        ),
                        label: 'Category'),
                    BottomNavigationBarItem(
                      icon: Icon(
                        index == 2
                            ? Icons.shopping_cart
                            : Icons.shopping_cart_outlined,
                        size: 20.w,
                      ),
                      label: 'My Cart',
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(
                          index == 3
                              ? Icons.notifications
                              : Icons.notifications_none_rounded,
                          size: 20.w,
                        ),
                        label: 'Notification'),
                    BottomNavigationBarItem(
                        icon: Icon(
                          index == 4 ? Icons.person : Icons.person_outline,
                          size: 20.w,
                        ),
                        label: 'Account'),
                  ]),
              body: BlocProvider.of<HomeCubitBloc>(context).HomeScreens.elementAt(index).body,
            ),
          );
        });
  }
}
