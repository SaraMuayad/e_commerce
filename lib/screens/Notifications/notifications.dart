import 'package:e_commerce/Utils/common_widget.dart';
import 'package:e_commerce/screens/Notifications/have_notifications.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(image: AssetImage('assets/images/Notification.png')),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
                width: 350,
                child: Center(
                  child: boldText("No Notifications yet ", Colors.black, 24),
                )),
          ]),
          Padding(
              padding: const EdgeInsets.only(left: 100, right: 100, top: 10),
              child: containerBtnPrimary(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HaveNotifications()));
              }, "Explore Categories", const Color(0xff6C47FF))),
        ],
      )),
    );
  }
}
