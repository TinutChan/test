import 'package:flutter/material.dart';
import 'package:homework/screens/borrowscreen.dart';
import 'package:homework/screens/homescreen.dart';
import 'package:homework/screens/personalscreen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedItem = 0;
  void _navigationBottomBar(int index) {
    setState(() {
      _selectedItem = index;
    });
  }

  final List<Widget> _screens = [
    HomeScreen(),
    const BorrowScreen(),
    const PersonalScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _navigationBottomBar,
        currentIndex: _selectedItem,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: const IconThemeData(color: Colors.black),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
            activeIcon: Icon(Icons.home_filled),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Borrow',
            activeIcon: Icon(Icons.search_rounded),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: 'Person',
            activeIcon: Icon(Icons.add_box),
          ),
        ],
      ),
    );
  }
}
