import 'package:flutter/material.dart';
import 'package:word_wardrobe/common/navigation/navigation.dart';
import 'package:word_wardrobe/common/tabs/tabs.dart';
import 'package:word_wardrobe/features/dictionary/ui/dictionary/dictionary_screen.dart';
import 'package:word_wardrobe/features/home/home_screen.dart';
import 'package:word_wardrobe/features/profile/profile_screen.dart';
import 'package:word_wardrobe/features/trainings/trainings_screen.dart';

const _screens = [
  HomeScreen(),
  DictionaryScreen(),
  TrainingsScreen(),
  ProfileScreen(),
];

class TabsScreen extends StatefulWidget {
  final Tabs tab;

  const TabsScreen({
    required this.tab,
    super.key,
  });

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedIndex = 0;

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
        children: _screens,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => context.goAddWordScreen(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Dictionary',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Trainings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
