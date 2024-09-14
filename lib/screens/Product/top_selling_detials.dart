import 'package:e_commerce/Utils/colors.dart';
import 'package:e_commerce/Utils/common_widget.dart';
import 'package:e_commerce/screens/Product/cart_empty.dart';
import 'package:e_commerce/screens/Product/cart_full.dart';
import 'package:flutter/material.dart';

class Detials extends StatefulWidget {
  const Detials({Key? key}) : super(key: key);

  @override
  State<Detials> createState() => _DetialsState();
}

class _DetialsState extends State<Detials> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios, // add custom icons also
              color: ColorResources.black,
            ),
          ),
          actions: <Widget>[
            Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.heart_broken,
                    color: ColorResources.black,
                  ),
                )),
          ],
        ),
        body: ListView(
          children: [
            Container(
              width: 400,
              height: 200,
              color: Colors.transparent,
              child: ListView(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                scrollDirection: Axis.horizontal,
                children: const [
                  Image(image: AssetImage('assets/images/Rectangle.png')),
                  SizedBox(
                    width: 4,
                  ),
                  Image(image: AssetImage('assets/images/Rectangle10.png')),
                  SizedBox(
                    width: 4,
                  ),
                  Image(image: AssetImage('assets/images/Rectangle11.png')),
                  SizedBox(
                    width: 4,
                  ),
                  Image(image: AssetImage('assets/images/Rectangle.png'))
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 400,
              height: 440,
              color: Colors.transparent,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: boldText(
                        "Men's Harrington Jacket", ColorResources.black, 15),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: boldText("\$148", ColorResources.pre45, 15),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color(0xffF4F4F4),
                              borderRadius: BorderRadius.circular(20)),
                          width: 100,
                          height: 50,
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              lightText("Size", ColorResources.black, 16),
                              const SizedBox(
                                width: 250,
                              ),
                              boldText("S", ColorResources.black, 16),
                              const SizedBox(
                                width: 10,
                              ),
                              IconButton(
                                  onPressed: () {
                                    showButtonSheetForSize(context);
                                  },
                                  icon: const Icon(Icons.arrow_drop_down))
                            ],
                          ),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffF4F4F4),
                          borderRadius: BorderRadius.circular(20)),
                      width: 100,
                      height: 50,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          lightText("Color", ColorResources.black, 16),
                          const SizedBox(
                            width: 230,
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          IconButton(
                              onPressed: () {
                                showButtonSheetForColor(context);
                              },
                              icon: const Icon(Icons.arrow_drop_down))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffF4F4F4),
                          borderRadius: BorderRadius.circular(20)),
                      width: 100,
                      height: 50,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          lightText("Quantity", ColorResources.black, 16),
                          const SizedBox(
                            width: 180,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.hdr_plus)),
                          boldText("1", ColorResources.black, 16),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.hdr_plus))
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child: SizedBox(
                          width: 100,
                          child: lightText(
                              "Built for life and made to last, this full-zip corduroy jacket is part of our Nike Life collection. The spacious fit gives you plenty of room to layer underneath, while the soft corduroy keeps it casual and timeless.",
                              ColorResources.black,
                              12))),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: boldText(
                          "Shipping & Returns", ColorResources.black, 16)),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: lightText(
                        "Free standard shipping and free 60-day returns",
                        ColorResources.black,
                        12),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: boldText("Reviews", ColorResources.black, 12),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: boldText("4.5 Ratings", ColorResources.black, 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: lightText("213 Reviews", ColorResources.black, 12),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: 100,
                      height: 250,
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 20.0, // Adjust the radius as needed
                                backgroundImage: NetworkImage(
                                    'https://example.com/your_image_url.jpg'),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              boldText("Alex Morgan", ColorResources.black, 16),
                              const SizedBox(
                                width: 80,
                              ),
                              const Icon(
                                Icons.star,
                                color: ColorResources.pre45,
                              ),
                              const Icon(Icons.star,
                                  color: ColorResources.pre45),
                              const Icon(Icons.star,
                                  color: ColorResources.pre45),
                              const Icon(Icons.star,
                                  color: ColorResources.greyAEA),
                              const Icon(Icons.star,
                                  color: ColorResources.greyAEA)
                            ],
                          ),
                          Padding(
                              padding: const EdgeInsets.all(10),
                              child: SizedBox(
                                width: 350,
                                child: lightText(
                                    "Built for life and made to last, this full-zip corduroy jacket is part of our Nike Life collection. The spacious fit gives you plenty of room to layer underneath, while the soft corduroy keeps it casual and timeless.",
                                    ColorResources.black,
                                    12),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: lightText(
                                "12days ago", ColorResources.black, 12),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 10),
          child: containerWithTextsButton(() {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const CartEmpty()));
          }, "\$148", "Add to Bag"),
        ));
  }
}

Future showButtonSheetForColor(BuildContext context) {
  List<dynamic> ColorList = [
    ColorResources.orangeFB9,
    ColorResources.black,
    ColorResources.redD90,
    ColorResources.yellowFFF,
    ColorResources.blue1D3
  ];
  List<String> TextList = [
    "Orange",
    "Black",
    "Red",
    "Yellow",
    "Blue",
  ];
  return showModalBottomSheet(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      context: context,
      builder: (context) => SizedBox(
          height: 300,
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 160,
                  ),
                  boldText("Color", ColorResources.black, 16),
                  const SizedBox(
                    width: 130,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close))
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 360,
                  height: 230,
                  color: Colors.transparent,
                  child: ListView.builder(
                      itemCount: ColorList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                              width: 20,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: ColorList[index],
                                  borderRadius: BorderRadius.circular(50)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: lightText(
                                        "text", ColorResources.black, 16),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Container(
                                        width: 20,
                                        height: 20,
                                        decoration: BoxDecoration(
                                            color: ColorResources.black,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                      ))
                                ],
                              )),
                        );
                      }),
                ),
              ),
            ],
          )));
}

Future showButtonSheetForSize(BuildContext context) {
  List<String> sizeText = ["S", "M", "L", "XL", "2XL", "3XL"];
  int selectedIndex;
  return showModalBottomSheet(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      context: context,
      builder: (context) => Container(
            height: 300,
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 160,
                    ),
                    boldText("Size", ColorResources.black, 16),
                    const SizedBox(
                      width: 130,
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.close))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: 360,
                    height: 230,
                    color: Colors.transparent,
                    child: ListView.builder(
                        itemCount: sizeText.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                                width: 20,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Color(0xffF4F4F4),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: lightText(sizeText[index],
                                          ColorResources.black, 16),
                                    ),
                                  ],
                                )),
                          );
                        }),
                  ),
                ),
              ],
            ),
          ));
}
