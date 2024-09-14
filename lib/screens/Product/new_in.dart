import 'package:e_commerce/Utils/colors.dart';
import 'package:e_commerce/Utils/common_widget.dart';
import 'package:flutter/material.dart';

class NewIn extends StatefulWidget {
  const NewIn({Key? key}) : super(key: key);

  @override
  State<NewIn> createState() => _NewInState();
}

class _NewInState extends State<NewIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: boldText('New In', ColorResources.black0F1, 15),
        ),
        body: ListView(
          children: [
            for (int i = 0; i < 10; i++) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  cardImageAandText(() {}, 'assets/images/Rectangle.png'),
                  const SizedBox(
                    width: 2,
                  ),
                  cardImageAandText(() {}, 'assets/images/Rectangle.png'),
                ],
              ),
              const SizedBox(
                height: 10,
              )
            ]
          ],
        ));
  }
}
