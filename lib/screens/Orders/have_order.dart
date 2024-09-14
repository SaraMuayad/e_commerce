import 'package:e_commerce/Utils/colors.dart';
import 'package:e_commerce/Utils/common_widget.dart';
import 'package:e_commerce/Utils/shape_indicator_tab.dart';
import 'package:flutter/material.dart';

class HaveOrder extends StatefulWidget {
  const HaveOrder({Key? key}) : super(key: key);

  @override
  State<HaveOrder> createState() => _HaveOrderState();
}

class _HaveOrderState extends State<HaveOrder> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 5, vsync: this);
    setState(() {
      _tabController;
    });
    return Scaffold(
        appBar: AppBar(
          title: boldText("Order", ColorResources.black, 16),
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: TabBar(
                  controller: _tabController,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: ColorResources.pre45,
                  labelColor: Colors.black,
                  labelStyle: const TextStyle(fontSize: 14.0),
                  unselectedLabelColor:
                      const Color.fromARGB(255, 176, 175, 175),
                  indicator: CircleTabIndicator(
                      color: ColorResources.pre45, radius: 4),
                  tabs: const [
                    Tab(
                      text: 'Processing',
                    ),
                    Tab(
                      text: "Shipped",
                    ),
                    Tab(
                      text: 'Delivered',
                    ),
                    Tab(
                      text: 'Returned',
                    ),
                    Tab(
                      text: 'Canceled',
                    )
                  ]),
            ),
          ]),
        ));
  }
}
