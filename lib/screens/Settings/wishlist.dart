import 'package:e_commerce/Utils/colors.dart';
import 'package:e_commerce/Utils/common_widget.dart';
import 'package:flutter/material.dart';

class WishList extends StatefulWidget {
  const WishList({Key? key}) : super(key: key);

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: boldText("WishList", ColorResources.black, 16),
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //heart.png
          // children: [
          //   horizontalContainerWithTextAndIcon(
          //       () {}, 'assets/images/heart.png', 'My Favorite', '12 Products'),
          //   horizontalContainerWithNotifications(
          //       () {},
          //       'assets/images/Framenotification.png',
          //       'Gilbert, you placed and order check your order history for full details'),
          //   horizontalContainerWithNotifications(
          //       () {},
          //       'assets/images/FrameNotifiNon.png',
          //       'Gilbert, you placed and order check your order history for full details'),
          //   horizontalContainerWithNotifications(
          //       () {},
          //       'assets/images/FrameNotifiNon.png',
          //       'Gilbert, you placed and order check your order history for full details'),
          // ],
        ));
  }
}
