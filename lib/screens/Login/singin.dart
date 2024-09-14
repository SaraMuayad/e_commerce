import 'package:e_commerce/Utils/common_widget.dart';
import 'package:e_commerce/screens/Login/forget_pass.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SinginScreen extends StatefulWidget {
  const SinginScreen({Key? key}) : super(key: key);

  @override
  State<SinginScreen> createState() => _SinginScreenState();
}

class _SinginScreenState extends State<SinginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 10,
                    ),
                    boldText("Create Account", Colors.black, 32)
                  ],
                ),
                Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: textField("Firstname")),
                Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: textField("Lastname")),
                Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: textField("Email Address")),
                Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: textField("Password")),
                Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: containerBtnPrimary(
                        () {}, "Continue", const Color(0xff6C47FF))),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 10,
                    ),
                    lightText("Forgot Password ? ", const Color(0xff272727), 16,
                        TextAlign.left),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ForgetPass()));
                      },
                      child: boldText("Reset", Colors.black, 16),
                    )
                  ],
                ),
              ],
            )));
  }
}
