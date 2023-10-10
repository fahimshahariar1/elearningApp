import 'package:elearningapp1/pages/application/application_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ApplicationPage extends StatefulWidget {
  const ApplicationPage({super.key});

  @override
  State<ApplicationPage> createState() => _ApplicationPageState();
}

class _ApplicationPageState extends State<ApplicationPage> {
  
  int index = 0;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: buildPage(index),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value){
              
              setState(() {
                index = value;
              });
              
            },
            
            items: [
              BottomNavigationBarItem(
                label: "Home",
                  icon: SizedBox(
                height: 15.h,
                width: 15.w,
                child: Image.asset("assets/icons/home.png"),
              )),
              BottomNavigationBarItem(
                label: "Seacrh",
                  icon: SizedBox(
                height: 15.h,
                width: 15.w,
                child: Image.asset("assets/icons/search.png"),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
