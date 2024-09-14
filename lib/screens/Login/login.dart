import 'package:e_commerce/Utils/colors.dart';
import 'package:e_commerce/Utils/common_widget.dart';
import 'package:e_commerce/screens/Home/main_home.dart';
import 'package:e_commerce/screens/Login/singin.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height / 10),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 10,
                ),
                boldText("Login", Colors.black, 32)
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: textField("Email Address")),
            Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: textField("Password")),
            Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: containerBtnPrimary(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyHomePage()));
                }, "Continue", const Color(0xff6C47FF))),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 10,
                ),
                lightText("Dont have an Account ?", const Color(0xff272727), 16,
                    TextAlign.left),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SinginScreen()));
                  },
                  child: boldText(" Create One", Colors.black, 16),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
              child: containerBtnApple(
                  () {}, "Continue With Apple", ColorResources.greyF4),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: containerBtnFacebook(
                  () {}, "Continue With Facebook", ColorResources.greyF4),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: containerBtnGoogle(
                    () {}, "Continue With Google", ColorResources.greyF4))
          ],
        ),
      ),
    );
  }
}
