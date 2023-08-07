import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildAppbar() {
  return AppBar(
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1),
      child: Container(
        height: 1,
        color: Colors.grey.withOpacity(0.5),
      ),
    ),
    title: Text(
      "Log In",
      style: TextStyle(
        color: Colors.black,
        fontSize: 16.sp,
        fontWeight: FontWeight.normal,
      ),
    ),
    centerTitle: true,
  );
}

Widget loginutilitis(BuildContext, context) {
  return Container(
    margin: EdgeInsets.only(top: 40.h, bottom: 20.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        reusableIcons("google"),
        reusableIcons("apple"),
        reusableIcons("facebook"),
      ],
    ),
  );
}

Widget reusableIcons(String iconName) {
  return GestureDetector(
    child: SizedBox(
      height: 40.w,
      width: 40.w,
      child: Image.asset("assets/icons/$iconName.png"),
    ),
  );
}

Widget reusabletexts(String texts){
  return Container(
    margin: EdgeInsets.only(bottom: 5.h),
    child: Text(
      texts,
      style: TextStyle(
        color: Colors.grey.withOpacity(0.5),
        fontWeight: FontWeight.normal,
        fontSize: 14.sp,
      ),
  ),
  );
}

Widget buildtextfield(String hintText, String textType, String iconName){
  return Container(
    width:325.w,
    height: 50.h,
    margin: EdgeInsets.only(bottom: 20.h),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      border: Border.all(color: Colors.black)
    ),
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 17.w),
          width: 16.w,
          height: 16.w,
          child: Image.asset("assets/icons/$iconName.png"),
        ),
        SizedBox(
          width: 270.w,
          height: 50.h,
          child: TextField(
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              hintText: hintText,
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent
                )
              ),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.transparent
                  )
              ),
              disabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.transparent
                  )
              ),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.transparent
                  )
              ),
              hintStyle: TextStyle(
                color: Colors.grey.withOpacity(0.5),
              )
            ),
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Avenir",
              fontWeight: FontWeight.normal,
              fontSize: 14.sp
            ),
            autocorrect: false,
            obscureText: textType=="pass"?true:false,
          ),
        )
      ],
    ),
  );
}

Widget forgotPass(){
  return Container(
    margin: EdgeInsets.only(left: 25.w),
    width: 260.w,
    height: 44.h,
    child: GestureDetector(
      onTap: (){

      },
      child: const Text("Forgot Password?", style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
        decoration: TextDecoration.underline,
        decorationColor: Colors.blue,
      ),),
    ),
  );
}

Widget buildloginandRegButton(String buttonName, String buttonType){
  return GestureDetector(
    onTap: (){

    },
    child: Container(
      margin: EdgeInsets.only(left: 25.w, right: 25.w, top: buttonType == "login"?4.h:20.h),
      width: 325.w,
    height: 50.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: buttonType =="login"? Colors.blue:Colors.white,
        boxShadow: [
          BoxShadow(
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(1, 1),
            color: Colors.grey.withOpacity(0.1),
          )
        ]
      ),
      child: Center(child: Text(buttonName, style: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 16.sp,
        color: buttonType=="login"?Colors.white:Colors.black
      ),)),
    ),
  );
}

