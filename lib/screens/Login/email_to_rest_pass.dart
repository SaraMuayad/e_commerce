import 'package:e_commerce/Utils/common_widget.dart';
import 'package:e_commerce/screens/Login/trust.dart';
import 'package:flutter/material.dart';

class Rest extends StatefulWidget {
  const Rest({Key? key}) : super(key: key);

  @override
  State<Rest> createState() => _RestState();
}

class _RestState extends State<Rest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(image: AssetImage('assets/images/messageim.png')),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
                width: 350,
                child: Center(
                  child: boldText(
                      "We Sent you an Email to reset ", Colors.black, 24),
                )),
          ]),
          boldText("your password.", Colors.black, 24),
          Padding(
              padding: const EdgeInsets.only(left: 100, right: 100, top: 10),
              child: containerBtnPrimary(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TrustScreen()));
              }, "Return to Login", const Color(0xff6C47FF))),
        ],
      )),
    );
  }
}
