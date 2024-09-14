import 'package:e_commerce/Utils/colors.dart';
import 'package:e_commerce/Utils/common_widget.dart';
import 'package:flutter/material.dart';

class FullCart extends StatefulWidget {
  const FullCart({Key? key}) : super(key: key);

  @override
  State<FullCart> createState() => _FullCartState();
}

class _FullCartState extends State<FullCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: boldText("Cart", ColorResources.black, 16),
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: InkWell(
                  child: lightText("Remove All", ColorResources.black, 16),
                  onTap: () {},
                ),
              )
            ],
          ),
          Container(
              width: 400,
              height: 350,
              color: Colors.transparent,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffF4F4F4),
                          borderRadius: BorderRadius.circular(8)),
                      margin:
                          const EdgeInsets.only(right: 15, left: 20, top: 10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                              leading:
                                  Image.asset("assets/images/Rectangle.png"),
                              title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Men's Harrington Jacket"),
                                  boldText("\$148", ColorResources.black, 12)
                                ],
                              ),
                              subtitle: Row(
                                children: [
                                  const Text("Size -"),
                                  boldText("M", ColorResources.black, 16),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Text("Color - "),
                                  boldText("Lemon", ColorResources.black, 16),
                                  const SizedBox(
                                    width: 45,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                          color: ColorResources.pre45,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Center(
                                          child: boldText(
                                              "+", ColorResources.white, 18)),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                          color: ColorResources.pre45,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Center(
                                          child: boldText(
                                              "-", ColorResources.white, 18)),
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    );
                  })),
          Container(
            color: Colors.transparent,
            width: 400,
            height: 200,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: lightText("Subtotal", ColorResources.black, 16),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: boldText("\$200", ColorResources.black, 16),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child:
                          lightText("Shipping Cost", ColorResources.black, 16),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: boldText("\$8.00", ColorResources.black, 16),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: lightText("Tax", ColorResources.black, 16),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: boldText("\$0.00", ColorResources.black, 16),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: lightText("Total", ColorResources.black, 16),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: boldText("\$208", ColorResources.black, 16),
                    ),
                  ],
                ),
                Row()
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: containerButton(() {}, "Checkout"),
    );
  }
}
