import 'package:e_commerce/Utils/colors.dart';
import 'package:e_commerce/Utils/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Hoodies extends StatefulWidget {
  const Hoodies({Key? key}) : super(key: key);

  @override
  State<Hoodies> createState() => _HoodiesState();
}

class _HoodiesState extends State<Hoodies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: boldText('Top Selling', ColorResources.black0F1, 15),
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
