import 'package:e_commerce/Utils/colors.dart';
import 'package:e_commerce/Utils/common_widget.dart';
import 'package:flutter/material.dart';

class PaymentSetting extends StatefulWidget {
  const PaymentSetting({Key? key}) : super(key: key);

  @override
  State<PaymentSetting> createState() => _PaymentSettingState();
}

class _PaymentSettingState extends State<PaymentSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: boldText("Add Card", ColorResources.black, 16),
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: textField("Card Number"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 161,
              child: textField("CCV"),
            ),
            SizedBox(
              width: 161,
              child: textField("Exp"),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: textField("Cardholder Name"),
        ),
      ]),
      bottomNavigationBar: containerBtnPrimary(() {
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context) => const MyHomePage()));
      }, "Save", const Color(0xff6C47FF)),
    );
  }
}
