import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavHome extends StatelessWidget {
  const BottomNavHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      //I'm using BackdropFilter for the blurring effect
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 9.0,
          sigmaY: 10.0,
        ),
        child: Opacity(
          opacity: 0.98,
          child: BottomNavigationBar(
            elevation: 0,
            backgroundColor: Colors.transparent.withOpacity(0.95),
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.white60,
            selectedItemColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home_filled),
              ),
              BottomNavigationBarItem(
                label: 'Search',
                icon: Image.asset(
                  'assets/images/icon_search.png',
                  width: 22,
                  color: Colors.white60,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Your Library',
                icon: Image.asset(
                  'assets/images/icon_library.png',
                  width: 22,
                  color: Colors.white60,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Premium',
                icon: Image.asset(
                  'assets/images/logo_white.png',
                  width: 22,
                  color: Colors.white60,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
