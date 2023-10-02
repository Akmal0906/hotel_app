import 'package:flutter/material.dart';
import 'package:hotel_app/presentation/view/account_screen.dart';
import 'package:hotel_app/presentation/view/home_screen.dart';
import 'package:hotel_app/presentation/view/search_screen.dart';

class CombainScreen extends StatefulWidget {
  const CombainScreen({super.key});

  @override
  State<CombainScreen> createState() => _CombainScreenState();
}

class _CombainScreenState extends State<CombainScreen> {
  int _currentIndex = 0;
  List<Widget> list = [
    const HomeScreen(),
    const SearchScreen(),
    const AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Account'),
        ],
      ),
    );
  }
}
