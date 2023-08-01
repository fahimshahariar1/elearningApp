import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 34.h),
          width: 375.w,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              PageView(
                children: [
                  _page(
                      1,
                      context,
                      "NEXT",
                      "First see learning",
                      "Forget about a for of paper all knowledge in one learning!",
                      "image Path"),
                  _page(
                      2,
                      context,
                      "NEXT",
                      "Connect With Everyone",
                      "Alwyas keep in touch with your tutor & friend. Let's get connected",
                      "image Path"),
                  _page(
                      3,
                      context,
                      "GET STARTED",
                      "Always Fascinated Learning",
                      "Anywhere, anytime. The time is at our discretion so study whenever you want",
                      "image Path"),
                ],
              ),
              Positioned(
                  bottom: 100.h,
                  child: DotsIndicator(dotsCount: 3,
                  decorator: DotsDecorator(
                    color: Colors.grey,
                    size: Size.square(8),
                    activeSize: Size(10, 8),
                    activeColor: Colors.blue,
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    )
                  ),),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget _page(int index, BuildContext context, String buttonname, String title,
      String subtitle, String imagepath) {
    return Column(
      children: [
        SizedBox(
          width: 345.w,
          height: 345.w,
          child: Text("Image1"),
        ),
        Container(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 24.sp,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 30.w, right: 30.w),
          child: Text(
            subtitle,
            style: TextStyle(
              color: Colors.black.withOpacity(0.5),
              fontSize: 14.sp,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 100.h, left: 25.w, right: 25.w),
          width: 325.w,
          height: 50.h,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(15.w)),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 1))
              ]),
          child: Center(
            child: Text(
              buttonname,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 16.sp,
              ),
            ),
          ),
        )
      ],
    );
  }
}
