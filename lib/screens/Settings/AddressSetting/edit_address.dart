import 'package:e_commerce/Utils/colors.dart';
import 'package:e_commerce/Utils/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class EditAddressScreeb extends StatefulWidget {
  const EditAddressScreeb({Key? key}) : super(key: key);

  @override
  State<EditAddressScreeb> createState() => _EditAddressScreebState();
}

class _EditAddressScreebState extends State<EditAddressScreeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: boldText("Add Address", ColorResources.black, 16),
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: textField("Street Address"),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: textField("City"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 161,
              child: textField("State"),
            ),
            SizedBox(
              width: 161,
              child: textField("Zip Code"),
            )
          ],
        )
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
