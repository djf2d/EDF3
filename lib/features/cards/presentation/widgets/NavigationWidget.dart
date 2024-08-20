import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Text('Home Screen', textAlign: TextAlign.center),
    Text('History Screen', textAlign: TextAlign.center),
    Text('Cards Screen', textAlign: TextAlign.center),
    Text('Profile Screen', textAlign: TextAlign.center),
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
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                _onItemTapped(0);
              },
              color:
                  _selectedIndex == 0 ? Color(0xFF386BF6) : Color(0xFF9DB2CE),
            ),
            IconButton(
              icon: Icon(Icons.history),
              onPressed: () {
                _onItemTapped(1);
              },
              color:
                  _selectedIndex == 1 ? Color(0xFF386BF6) : Color(0xFF9DB2CE),
            ),
            SizedBox(width: 48), // The placeholder for the middle button
            IconButton(
              icon: Icon(Icons.credit_card),
              onPressed: () {
                _onItemTapped(2);
              },
              color:
                  _selectedIndex == 2 ? Color(0xFF386BF6) : Color(0xFF9DB2CE),
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                _onItemTapped(3);
              },
              color:
                  _selectedIndex == 3 ? Color(0xFF386BF6) : Color(0xFF9DB2CE),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.qr_code_scanner),
      ),
    );
  }
}
