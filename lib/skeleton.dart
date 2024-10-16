import 'package:flutter/material.dart';
import 'package:provider_example/pages/home_page.dart';
import 'package:provider_example/pages/setting_page.dart';
import 'package:provider_example/pages/challenge_page.dart';

// Skeleton with BottomNavigationBar
class Skeleton extends StatefulWidget {
  const Skeleton({super.key});

  @override
  _SkeletonState createState() => _SkeletonState();
}

class _SkeletonState extends State<Skeleton> {
  int _currentIndex = 0;

  // List of screens for BottomNavigationBar
  final List<Widget> _screens = [
    const HomePage(),
    const SettingsPage(),
    const ChallengePage(),
  ];

  // Handle bottom navigation bar item tap
  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[
          _currentIndex], // Show the current screen based on the selected index
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_mark),
            label: 'Challenge',
          ),
        ],
      ),
    );
  }
}
