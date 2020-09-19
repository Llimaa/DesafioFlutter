import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Theme.of(context).primaryColor,
      selectedItemColor: Theme.of(context).accentColor,
      unselectedItemColor: Colors.grey,
      elevation: 0.0,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text(''),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.credit_card),
          title: Text(''),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          title: Text(''),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.attach_money),
          title: Text(''),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          title: Text(''),
          backgroundColor: Colors.grey,
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }
}
