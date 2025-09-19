import 'package:flutter/material.dart';
import 'package:memobile/screens/my_reservations_screen.dart';
import 'package:memobile/screens/home_screen.dart';
import 'package:memobile/screens/settings_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    MyReservationsScreen(),
    SettingsScreen(),
  ];

  static const List<String> _widgetTitles = <String> [
    'Motos Disponíveis',
    'Minhas Reservas',
    'Configurações',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.motorcycle),
            label: 'Disponíveis',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'Minhas Reservas',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Configurações'
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
