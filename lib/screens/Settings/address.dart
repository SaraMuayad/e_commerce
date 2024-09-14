import 'package:e_commerce/Utils/colors.dart';
import 'package:e_commerce/Utils/common_widget.dart';
import 'package:e_commerce/screens/Settings/AddressSetting/edit_address.dart';
import 'package:flutter/material.dart';

class Address extends StatefulWidget {
  const Address({Key? key}) : super(key: key);

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: boldText("Address", ColorResources.black, 16),
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            containerForAddress(() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EditAddressScreeb()));
            }, "This happens when the parent widget does not provide a finite width constraint. For example, if the InputDecorator is contained by a Row, then its width must be "),
            containerForAddress(() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EditAddressScreeb()));
            }, "This happens when the parent widget does not provide a finite width constraint. For example, if the InputDecorator is contained by a Row, then its width must be ")
          ],
        ));
  }
}
