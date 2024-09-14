import 'package:e_commerce/Utils/colors.dart';
import 'package:e_commerce/Utils/common_widget.dart';
import 'package:e_commerce/screens/Settings/address.dart';
import 'package:e_commerce/screens/Settings/help.dart';
import 'package:e_commerce/screens/Settings/payment.dart';
import 'package:e_commerce/screens/Settings/support.dart';
import 'package:e_commerce/screens/Settings/wishlist.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<String> textList = ["Address", "Wishlist", "Payment", "Support", "Help"];
  List settingsScreens = [
    Address(),
    WishList(),
    Payment(),
    Support(),
    Help(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 60,
          ),
          CircleAvatar(
            radius: 50.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.asset('assets/images/davidWilliam.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0xffF4F4F4),
                  borderRadius: BorderRadius.circular(20)),
              width: 100,
              height: 150,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(15),
                          child: boldText(
                              "Gilbert Jones", ColorResources.black, 16)),
                      const SizedBox(
                        width: 170,
                      ),
                      InkWell(
                        onTap: () {},
                        child: boldText("Edit", ColorResources.pre45, 16),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: lightText("Glbertjones001@gmail.com",
                            ColorResources.black, 16),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(15),
                          child: lightText(
                              "121-224-7890", ColorResources.black, 16))
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            width: 100,
            height: 400,
            color: Colors.grey[50],
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: textList.length,
                itemBuilder: (context, index) {
                  return Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xffF4F4F4),
                            borderRadius: BorderRadius.circular(15)),
                        width: 100,
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: boldText(
                                  textList[index], ColorResources.black, 16),
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              settingsScreens[index]));
                                },
                                icon: const Icon(Icons.arrow_forward_ios))
                          ],
                        ),
                      ));
                }),
          )
        ],
      ),
    );
  }
}
