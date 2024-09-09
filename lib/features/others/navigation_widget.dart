import 'package:edf3/utils/assets.dart';
import 'package:edf3/utils/theme.dart';
import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeScreen();
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
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
            NavBarImage(
              appIcons: AppIcons.home,
              hightLight: _selectedIndex == 0,
              index: 0,
              onTap: (value) {
                return _onItemTapped(0);
              },
            ),
            NavBarImage(
              appIcons: AppIcons.history,
              hightLight: _selectedIndex == 1,
              index: 1,
              onTap: (value) {
                return _onItemTapped(1);
              },
            ),
            const SizedBox(width: 48), // The placeholder for the middle button
            NavBarImage(
              appIcons: AppIcons.card,
              hightLight: _selectedIndex == 2,
              index: 2,
              onTap: (value) {
                return _onItemTapped(2);
              },
            ),
            NavBarImage(
              appIcons: AppIcons.profile,
              hightLight: _selectedIndex == 3,
              index: 3,
              onTap: (value) {
                return _onItemTapped(3);
              },
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.qr_code_scanner),
      ),
    );
  }
}

class NavBarImage extends StatelessWidget {
  final ValueChanged<int> onTap;
  final bool hightLight;
  final int index;
  final AppIcons appIcons;
  const NavBarImage({
    super.key,
    required this.onTap,
    required this.hightLight,
    required this.index,
    required this.appIcons,
  });

  @override
  Widget build(BuildContext context) {
    const Color hightLighted = AppTheme.hightLighted;
    const Color nothightLighted = AppTheme.notHightLighted;
    return GestureDetector(
      onTap: () => onTap(index),
      child: Image.asset(
        appIcons.getPath(),
        color: hightLight ? hightLighted : nothightLighted,
      ),
    );
  }
}
