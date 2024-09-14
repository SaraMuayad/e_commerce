import 'package:e_commerce/Categories/hoodies_screen.dart';
import 'package:e_commerce/Categories/shope_by_categories.dart';
import 'package:e_commerce/Utils/colors.dart';
import 'package:e_commerce/Utils/common_widget.dart';
import 'package:e_commerce/screens/Product/new_in.dart';
import 'package:e_commerce/screens/Product/top_selling.dart';
import 'package:e_commerce/screens/Product/top_selling_detials.dart';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 10,
          ),
          child: CircleAvatar(
            radius: 10.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.asset('assets/images/davidWilliam.png'),
            ),
          ),
        ),
        centerTitle: true,
        title: const Text(
          "data",
          style: TextStyle(
            color: ColorResources.pre45,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Container(
                decoration: BoxDecoration(
                    color: ColorResources.pre45,
                    borderRadius: BorderRadius.circular(50)),
                padding: const EdgeInsets.all(8),
                child: Icon(
                  Icons.shopping_bag,
                  color: Theme.of(context).canvasColor,
                )),
          )
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                cursorColor: Colors.black,
                // keyboardType: TextInputType.,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    // width: 0.0 produces a thin "hairline" border

                    borderRadius: BorderRadius.horizontal(
                        left: Radius.elliptical(20, 20),
                        right: Radius.elliptical(20, 20)),
                    borderSide: BorderSide(color: Colors.grey, width: 0.0),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.elliptical(20, 20),
                        right: Radius.elliptical(20, 20)),
                  ),
                  hintStyle: TextStyle(fontSize: 17),
                  hintText: 'Search your trips',
                  suffixIcon: Icon(Icons.search),
                  contentPadding: EdgeInsets.all(18),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    boldText("Categories", ColorResources.black, 16),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ShopByCategories()));
                      },
                      child: lightText("See All", ColorResources.black, 16),
                    )
                  ],
                )),
            Padding(
                padding: const EdgeInsets.only(left: 0, right: 0, top: 10),
                child: SizedBox(
                  width: 200,
                  height: 85,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      containerSpcialImageAandText(
                          () {}, "Hoodies", 'assets/images/Ellipse1.png'),
                      containerSpcialImageAandText(
                          () {}, "Shorts", 'assets/images/Ellipse2.png'),
                      containerSpcialImageAandText(
                          () {}, "Shoes", 'assets/images/Ellipse3.png'),
                      containerSpcialImageAandText(
                          () {}, "Bag", 'assets/images/Ellipse4.png'),
                      containerSpcialImageAandText(
                          () {}, "Accessories", 'assets/images/Ellipse5.png'),
                    ],
                  ),
                )),
            Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    boldText("Top Selling", ColorResources.black, 16),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TopSelling()));
                      },
                      child: lightText("See All", ColorResources.black, 16),
                    )
                  ],
                )),
            Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: SizedBox(
                    width: 200,
                    height: 250,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        cardImageAandText(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Detials()));
                        }, 'assets/images/Rectangle.png'),
                        cardImageAandText(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Detials()));
                        }, 'assets/images/Rectangle.png'),
                        cardImageAandText(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Detials()));
                        }, 'assets/images/Rectangle.png'),
                      ],
                    ))),
            Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //NewIn
                    boldText("New In", ColorResources.black, 16),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NewIn()));
                      },
                      child: lightText("See All", ColorResources.black, 16),
                    )
                  ],
                )),
            Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: SizedBox(
                    width: 200,
                    height: 250,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        cardImageAandText(() {}, 'assets/images/Rectangle.png'),
                        cardImageAandText(() {}, 'assets/images/Rectangle.png'),
                        cardImageAandText(() {}, 'assets/images/Rectangle.png'),
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}
