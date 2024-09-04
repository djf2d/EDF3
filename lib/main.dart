import 'package:flutter/material.dart';
import 'utils/assets.dart';
import 'utils/theme.dart';
import 'utils/home_screen.dart';
import 'utils/history_screen.dart';
import 'features/cards/presentation/widgets/card_widget.dart';

void main() {
  runApp(const MainMenu());
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const MyAppBar({
    required this.title,
    super.key,
  });

  // The preferredSize should reflect the height you want for the AppBar
  @override
  Size get preferredSize => const Size.fromHeight(100); // Matches toolbarHeight

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor:
          Colors.transparent, // Make the AppBar background transparent
      elevation: 0, // Remove the shadow
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black, // Make sure the text color is visible
        ),
      ),
      centerTitle: true, // Center the title in the AppBar
      toolbarHeight: 70, // Increase AppBar height to 70
    );
  }
}

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int currentIndex = 0;
  Map<int, String> screensNames = {
    0: "Home",
    1: "History",
    2: "My Cards",
    3: "Profile"
  };
  final List<Widget> screens = [
    const HomeScreen(),
    const HistoryScreen(),
    const Center(child: CreditCard()), // Placeholder for 'Cards' screen
    const Center(
        child: Text('Profile Screen')), // Placeholder for 'Profile' screen
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: MyAppBar(title: screensNames[currentIndex] ?? ""),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFFFFFFF), // White color
                Color(0xFF999999), // Gray color
              ],
              stops: [0.3782, 1.0], // Matches the gradient stops you provided
            ),
          ),
          child: screens[currentIndex],
        ),
        bottomNavigationBar: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            MyBottomNavigationBar(
              appIcons: const [
                AppIcons.home,
                AppIcons.history,
                AppIcons.card,
                AppIcons.profile
              ],
              index: currentIndex,
              onTap: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
            ),
            Positioned(
              bottom: 15,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    currentIndex =
                        2; // Replace with desired action for QR button
                  });
                },
                child: Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppTheme.hightLighted,
                    border: Border.all(color: Colors.white, width: 4),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      AppIcons.qr.getPath(),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyBottomNavigationBar extends StatelessWidget {
  final List<AppIcons> appIcons;
  final ValueChanged<int> onTap;
  final int index;
  const MyBottomNavigationBar({
    super.key,
    required this.appIcons,
    required this.onTap,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: getImages()
          .map(
            (e) => BottomNavigationBarItem(
              icon: e.$1,
              label: e.$2,
            ),
          )
          .toList(),
      currentIndex: index,
      onTap: onTap,
      selectedItemColor: AppTheme.hightLighted,
      unselectedItemColor: AppTheme.notHightLighted,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
    );
  }

  List<(Widget, String)> getImages() {
    List<(Widget, String)> temp = [];

    for (int i = 0; i < appIcons.length; i++) {
      temp.add((
        Image.asset(
          appIcons[i].getPath(),
          color: index == i ? AppTheme.hightLighted : AppTheme.notHightLighted,
        ),
        appIcons[i].name
      ));
    }

    return temp;
  }
}
