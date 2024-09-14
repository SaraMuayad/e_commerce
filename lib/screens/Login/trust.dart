import 'package:e_commerce/Utils/colors.dart';
import 'package:e_commerce/Utils/common_widget.dart';
import 'package:e_commerce/screens/Login/login.dart';
import 'package:flutter/material.dart';

class TrustScreen extends StatefulWidget {
  const TrustScreen({Key? key}) : super(key: key);

  @override
  State<TrustScreen> createState() => _TrustScreenState();
}

class _TrustScreenState extends State<TrustScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height / 6),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                    ),
                    boldText("Tell us About yourself", Colors.black, 24),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 40,
                    ),
                    lightText("Who do you shop for ?", Colors.black, 16)
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    optionSmallSizeBtnPrimary(
                        () {}, "Man", const Color(0xff6C47FF)),
                    optionSmallSizeBtnPrimary(
                        () {}, "Woman", const Color(0xff6C47FF)),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 40,
                    ),
                    lightText("How Old are you ?", Colors.black, 16)
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorResources.greyF4,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: double.infinity,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        hint: const Text("Age Range"),
                        items: <String>['A', 'B', 'C', 'D'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (_) {},
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: containerBtnPrimary(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    }, "Finish", const Color(0xff6C47FF))),
              ],
            )));
  }
}
