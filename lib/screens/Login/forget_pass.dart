import 'package:e_commerce/Utils/common_widget.dart';
import 'package:e_commerce/screens/Login/email_to_rest_pass.dart';
import 'package:flutter/material.dart';

class ForgetPass extends StatefulWidget {
  const ForgetPass({Key? key}) : super(key: key);

  @override
  State<ForgetPass> createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(children: [
              Row(children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 10,
                ),
                boldText("Forgot Password", Colors.black, 32)
              ]),
              Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: textField("Enter Email Address")),
              Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: containerBtnPrimary(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Rest()));
                  }, "Continue", const Color(0xff6C47FF))),
            ])));
  }
}
