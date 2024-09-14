import 'package:flutter/material.dart';

class SText extends StatelessWidget {
  String title;
  SText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }
}
