import 'package:flutter/material.dart';
import 'pages/library_page.dart';
import 'pages/home_page.dart';
import 'pages/about_page.dart';
import 'pages/Course_page.dart';


class MainNavigationPage extends StatefulWidget {
  @override
  _MainNavigationPagState createState() => _MainNavigationPagState();
}
class _MainNavigationPagState extends State {
  int _selectedIndex = 2;
  PageController _pageController = PageController(initialPage: 2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: PageView(
      controller: _pageController,
      children: [
        AboutPage(),
        CoursePage(),
        HomePage(),
        LibraryPage(),
      ],
      onPageChanged: (index){
        setState(() {
          _selectedIndex = index;
        });
      },
    ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _onTabTapped,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.black,
        elevation: 10.0,
        backgroundColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Academics'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Events'),
          BottomNavigationBarItem(icon: Icon(Icons.photo_library), label: 'Library'),
        ],
      )
    );
  }
  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();

  }
}

