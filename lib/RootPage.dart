import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:quapp/HomePage.dart';
import 'package:quapp/serves.dart';
//import 'package:quapp/AppBar.dart';
// 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      backgroundColor: Colors.white,
      bottomNavigationBar: getTabs(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // selectedTab(4);
        },
        child: Icon(
          Icons.account_box_rounded,
          size: 25,
          color: const Color.fromARGB(255, 252, 252, 252),
        ),
        backgroundColor: const Color.fromARGB(255, 14, 3, 46),
        //params
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  /*
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          pageIndex = 4;
        },
        child: Icon(
          Icons.chat_bubble,
          size: 25,
        ),
        backgroundColor: Color(0xFF0064F5),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SCard(),
    );
  }*/
  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: [
        Services(),
        Center(
          child: Text(
            "Map",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Home",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
        ),
        SCard(),
      ],
    );
  }

  Widget getTabs() {
    List<IconData> IconsItems = [
      Icons.account_balance,
      Icons.indeterminate_check_box,
      Icons.map_sharp,
      Icons.home,
    ];
    return AnimatedBottomNavigationBar(
      icons: IconsItems,
      activeColor: Colors.blue,
      splashColor: Colors.grey,
      inactiveColor: Colors.black,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.softEdge,
      leftCornerRadius: 10,
      activeIndex: pageIndex,
      rightCornerRadius: 10,
      onTap: (index) {
        setState(() {
          pageIndex = index;
        });
      },
    );

    /*selectedTab(index) {
      setState(() {
        pageIndex = index;
      });
    }*/
  }

/*
  Widget getTabs() {
    return CurvedNavigationBar(
      items: [
        Image.asset("assets/icons/serves.webp", height: 3, width: 3),
        Image.asset("assets/icons/serves.webp", height: 3, width: 3),
        Image.asset("assets/icons/serves.webp", height: 3, width: 3),
        Image.asset("assets/icons/serves.webp", height: 3, width: 3),
      ],
      color: Colors.blue,
      buttonBackgroundColor: Colors.blue,
      backgroundColor: Colors.white,
      index: pageIndex,
      onTap: (index) {
        setState(() {
          pageIndex = index;
        });
      },
    );
  }
*/
}
