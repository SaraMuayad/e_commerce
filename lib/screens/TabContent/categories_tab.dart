import 'package:e_commerce/Utils/shape_indicator_tab.dart';
import 'package:flutter/material.dart';

class CategoriesTab extends StatefulWidget {
  const CategoriesTab({Key? key}) : super(key: key);

  @override
  State<CategoriesTab> createState() => _CategoriesTabState();
}

class _CategoriesTabState extends State<CategoriesTab>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 5, vsync: this);
    setState(() {
      _tabController;
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: TabBar(
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: const Color(0xffF15C22),
              labelColor: Colors.black,
              labelStyle: const TextStyle(fontSize: 14.0),
              unselectedLabelColor: const Color.fromARGB(255, 176, 175, 175),
              indicator: CircleTabIndicator(color: Colors.red, radius: 4),
              tabs: const [
                Tab(
                  text: 'All',
                ),
                Tab(
                  text: "Apparel",
                ),
                Tab(
                  text: 'Dress',
                ),
                Tab(
                  text: 'Tshirt',
                ),
                Tab(
                  text: 'Bag',
                )
              ]),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: const <Widget>[
              Center(
                child: Text("It's All here"),
              ),
              Center(
                child: Text("It's Apparel here"),
              ),
              Center(
                child: Text("It's Dress here"),
              ),
              Center(
                child: Text("It's Tshirt here"),
              ),
              Center(
                child: Text("It's Bag here"),
              )
            ],
          ),
        ),
        InkWell(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Explore More"),
                Icon(
                  Icons.arrow_forward_rounded,
                  size: 20,
                )
              ],
            ))
      ]),
    );
  }
}
