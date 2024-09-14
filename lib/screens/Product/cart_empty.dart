import 'package:e_commerce/Utils/common_widget.dart';
import 'package:e_commerce/screens/Product/cart_full.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CartEmpty extends StatefulWidget {
  const CartEmpty({Key? key}) : super(key: key);

  @override
  State<CartEmpty> createState() => _CartEmptyState();
}

class _CartEmptyState extends State<CartEmpty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(image: AssetImage('assets/images/cart.png')),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
                width: 350,
                child: Center(
                  child: boldText("Your Cart is Empty ", Colors.black, 24),
                )),
          ]),
          Padding(
              padding: const EdgeInsets.only(left: 100, right: 100, top: 10),
              child: containerBtnPrimary(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const FullCart()));
              }, "Explore Categories", const Color(0xff6C47FF))),
        ],
      )),
    );
  }
}
