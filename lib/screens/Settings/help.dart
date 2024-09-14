import 'package:e_commerce/Utils/colors.dart';
import 'package:e_commerce/Utils/common_widget.dart';
import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: boldText("Help", ColorResources.black, 16),
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            horizontalContainerWithNotifications(
                () {},
                'assets/images/Framenotification.png',
                'Gilbert, you placed and order check your order history for full details'),
            horizontalContainerWithNotifications(
                () {},
                'assets/images/FrameNotifiNon.png',
                'Gilbert, you placed and order check your order history for full details'),
            horizontalContainerWithNotifications(
                () {},
                'assets/images/FrameNotifiNon.png',
                'Gilbert, you placed and order check your order history for full details'),
          ],
        ));
  }
}
