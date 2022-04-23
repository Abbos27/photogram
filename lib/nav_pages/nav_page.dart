import 'package:flutter/material.dart';
import 'package:photogram/nav_pages/add_page.dart';
import 'package:photogram/nav_pages/chat_page/chat_page.dart';
import 'package:photogram/nav_pages/home_page.dart';
import 'package:photogram/nav_pages/profile_page.dart';
import 'package:photogram/nav_pages/search_page.dart';

class NavPage extends StatefulWidget {
  const NavPage({Key? key}) : super(key: key);

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  int currentIndex = 0;

  final screens = [HomePage(), SearchPage(), AddPage(), ChatPage(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        iconSize: 20,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                  child: Icon(Icons.add, color: Colors.white),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          Color(0xFFFF4B04),
                          Color(0xFFFF207E),
                          Color(0xFFFD00C1),
                        ],
                      ))),
              label: "Add"),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline_outlined), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ],
      ),
    );
  }
}
