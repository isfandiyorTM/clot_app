import 'package:clot/features/home/shop_by_categories_page.dart';
import 'package:clot/help.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../core/constants/colors.dart';
import 'home/home_page.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
     HoodieGridScreen(),
    NotificationsPage(),
    BookmarksPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ClotColors.purple,
        unselectedItemColor: ClotColors.textLightBlack,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: ClotColors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusBroken.home_2 ,size: 30,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusBroken.notification_bing ,size: 30,),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusBroken.receipt_1,size: 30,),
            label: 'Bookmarks',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusBroken.profile ,size: 30,),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

// Pages
class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Notifications Page',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class BookmarksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Bookmarks Page',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Profile Page',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
