import 'package:e_commerce/Utils/common_widget.dart';
import 'package:e_commerce/screens/Orders/have_order.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(image: AssetImage('assets/images/order.png')),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
                width: 350,
                child: Center(
                  child: boldText("No orders yet ", Colors.black, 24),
                )),
          ]),
          Padding(
              padding: const EdgeInsets.only(left: 100, right: 100, top: 10),
              child: containerBtnPrimary(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HaveOrder()));
              }, "Explore Categories", const Color(0xff6C47FF))),
        ],
      )),
    );
  }
}
