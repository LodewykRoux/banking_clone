import 'package:banking_clone/screens/home/home.dart';
import 'package:banking_clone/widget/button/icon_button_footer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Home(),
    Home(),
    Home(),
    Home(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey[900],
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            label: 'Cards',
            icon: Icon(Icons.card_giftcard),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            backgroundColor: Colors.black,
            label: 'Transact',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
            backgroundColor: Colors.black,
          ),
        ],
      ),
      body: _widgetOptions.elementAt(_currentIndex),
    );
  }
}
