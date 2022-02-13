import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'DonationsPage.dart';
import 'HomePage.dart';
import 'NotificationPage.dart';
import 'ProfilePage.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  @override
  _NavigatorPageState createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  int _currentIndex = 0;

  final _controller = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: _controller,
          physics: const NeverScrollableScrollPhysics(),
          children: const [HomePage(), ProfilePage(), DonationsPage(), NotificationPage()],
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) {
            setState(() => _currentIndex = i);
            _controller.animateToPage(i, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
          },
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: const Icon(Icons.home),
              title: const Text("Anasayfa"),
              selectedColor: Colors.purple,
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: const Icon(Icons.person_outline),
              title: const Text("Profil"),
              selectedColor: Colors.teal,
            ),

            /// Search
            SalomonBottomBarItem(
              icon: const Icon(Icons.plus_one),
              title: const Text("Fon Bağış"),
              selectedColor: Colors.orange,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: const Icon(Icons.warning),
              title: const Text("Bildirim"),
              selectedColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
