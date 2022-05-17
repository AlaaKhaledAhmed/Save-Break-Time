import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Models/virables.dart';
import '../../localization/localization_methods.dart';
class StudentNavHome extends StatefulWidget {
  

  @override
  State<StudentNavHome> createState() => _StudentNavHomeState();
}

class _StudentNavHomeState extends State<StudentNavHome> {
  int number = 10;

  void initState() {
    super.initState();
    studentPageController = PageController(initialPage: studentSelectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: studentPageController,
          children: studentPage,
        ),
        bottomNavigationBar: ConvexAppBar.badge(
          {0: '$number'},
          badgeColor: red,
          badgeMargin: EdgeInsets.only(bottom: 10.h, right: 50.w),
          style: TabStyle.reactCircle,
          //selest icon color
          activeColor: deepGrey,
          elevation: 10,
          //bar color
          backgroundColor: gry,
          //icon color
          height: 50.h,
         
          color: black.withOpacity(.7),
          items: [
            TabItem(
                icon: notificationsIcon,
                title: '${getTranslated(context, 'NOTIFICATION')}'),
             TabItem(
                icon: notificationsIcon,
                title: '${getTranslated(context, 'NOTIFICATION')}'),
          
            TabItem(icon: homeIcon, title: '${getTranslated(context, 'HOME')}'),
            TabItem(
                icon: requstIcon,
                title: '${getTranslated(context, 'REQUEST')}'),
          ],
          initialActiveIndex: 1, //optional, default as 0
          onTap: onTap,
        ));
  }

  //click methos--------------------------
  void onTap(int index) {
    setState(() {
      studentSelectedIndex = index;
    });
    pageController.animateToPage(studentSelectedIndex,
        duration: const Duration(milliseconds: 400), curve: Curves.easeInCirc);
  }
}
