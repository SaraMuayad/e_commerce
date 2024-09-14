import 'package:e_commerce/Categories/hoodies_screen.dart';
import 'package:e_commerce/Utils/common_widget.dart';
import 'package:flutter/material.dart';

class ShopByCategories extends StatefulWidget {
  const ShopByCategories({Key? key}) : super(key: key);

  @override
  State<ShopByCategories> createState() => _ShopByCategoriesState();
}

class _ShopByCategoriesState extends State<ShopByCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 10,
                ),
                boldText("Shop by Categories", Colors.black, 20)
              ],
            ),
            horizontalContainerWithImageAndTitle(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Hoodies()));
            }, 'assets/images/Ellipse1.png', 'Hoodies',
                'This is a simple card in Flutter.'),
            horizontalContainerWithImageAndTitle(
                () {},
                'assets/images/Ellipse2.png',
                'Shorts',
                'This is a simple card in Flutter.'),
            horizontalContainerWithImageAndTitle(
                () {},
                'assets/images/Ellipse3.png',
                'Shoes',
                'This is a simple card in Flutter.'),
            horizontalContainerWithImageAndTitle(
                () {},
                'assets/images/Ellipse4.png',
                'Bags',
                'This is a simple card in Flutter.'),
            horizontalContainerWithImageAndTitle(
                () {},
                'assets/images/Ellipse5.png',
                'Accessories',
                'This is a simple card in Flutter.'),
          ],
        ));
  }
}
