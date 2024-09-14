import 'package:e_commerce/Utils/colors.dart';
import 'package:e_commerce/screens/Home/home_tab_screen.dart';
import 'package:e_commerce/screens/Notifications/notifications.dart';
import 'package:e_commerce/screens/Orders/orders.dart';
import 'package:e_commerce/screens/Settings/profile.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int _selectedIndex = 0;

  static TextStyle optionStyle = const TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Notifications(),
    Orders(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print(_widgetOptions.elementAt(_selectedIndex));
    });
  }

  @override
  Widget build(BuildContext context) {
    final TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,

        showSelectedLabels: true, // <-- HERE
        // showUnselectedLabels: true,
        unselectedItemColor: ColorResources.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.home,
            ),
            label: 'Home',
            tooltip: 'Home',
            activeIcon: Container(
                decoration: BoxDecoration(
                    color: ColorResources.pre45,
                    borderRadius: BorderRadius.circular(25)),
                padding: const EdgeInsets.all(8),
                child: Icon(
                  Icons.home,
                  color: Theme.of(context).canvasColor,
                )),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.notification_add_outlined),
            label: 'Notification',
            tooltip: 'Notification',
            activeIcon: Container(
                decoration: BoxDecoration(
                    color: ColorResources.pre45,
                    borderRadius: BorderRadius.circular(25)),
                padding: const EdgeInsets.all(8),
                child: Icon(
                  Icons.notification_add_outlined,
                  color: Theme.of(context).canvasColor,
                )),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.pages_outlined),
            label: 'Order',
            tooltip: 'Order',
            activeIcon: Container(
                decoration: BoxDecoration(
                    color: ColorResources.pre45,
                    borderRadius: BorderRadius.circular(25)),
                padding: const EdgeInsets.all(8),
                child: Icon(
                  Icons.pages_outlined,
                  color: Theme.of(context).canvasColor,
                )),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.account_circle_outlined),
            label: 'Account',
            tooltip: 'Account',
            activeIcon: Container(
                decoration: BoxDecoration(
                    color: ColorResources.pre45,
                    borderRadius: BorderRadius.circular(25)),
                padding: const EdgeInsets.all(8),
                child: Icon(
                  Icons.account_circle_outlined,
                  color: Theme.of(context).canvasColor,
                )),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: ColorResources.pre45,
        onTap: _onItemTapped,
      ),
    );
  }
}
