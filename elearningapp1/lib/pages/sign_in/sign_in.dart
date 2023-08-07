import 'package:elearningapp1/pages/sign_in/widgets/sign_in_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: buildAppbar(),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                loginutilitis(BuildContext, context),
                Center(child: reusabletexts("Or Use Your Email to Login")),
                Container(
                  margin: EdgeInsets.only(top: 36.h),
                  padding: EdgeInsets.only(left: 25.w, right: 25.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      reusabletexts("Email"),
                      SizedBox(height: 5.h,),
                      buildtextfield("Enter Your Email", "email", "user"),
                      reusabletexts("Password"),
                      SizedBox(height: 5.h,),
                      buildtextfield("Enter Your Password", "pass", "lock"),
                    ],
                  ),
                ),
                forgotPass(),
                buildloginandRegButton("Log In",  "login"),
                buildloginandRegButton("Register",  "reg"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
