import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../commonwidgets.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: buildAppbar("Sign Up"),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 25,
                ),
                Center(
                    child: reusabletexts("Enter Your Details Below & Sign Up")),
                Container(
                  margin: EdgeInsets.only(top: 36.h),
                  padding: EdgeInsets.only(left: 25.w, right: 25.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      reusabletexts("User Name"),
                      buildtextfield("Enter Your User Name", "name", "user",
                          (value) {
                        // context.read<SignInBloc>().add(EmailEvent(value));
                      }),
                      reusabletexts("Email"),
                      buildtextfield("Enter Your Email", "email", "user",
                          (value) {
                        // context.read<SignInBloc>().add(EmailEvent(value));
                      }),
                      reusabletexts("Password"),
                      buildtextfield(
                        "Enter Your Password",
                        "pass",
                        "lock",
                        (value) {
                          // context.read<SignInBloc>().add(PassEvent(value));
                        },
                      ),
                      reusabletexts("Re-enter Password"),
                      buildtextfield(
                        "Re-enter Your Password",
                        "pass",
                        "lock",
                        (value) {
                          // context.read<SignInBloc>().add(PassEvent(value));
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25, bottom: 25),
                  child: reusabletexts(
                      "By Creating Your account you have to agree \nwith our terms and conditions"),
                ),
                buildloginandRegButton("Sign Up", "login", () {
                  Navigator.pushNamed(context, "register");
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
