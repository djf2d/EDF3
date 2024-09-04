import 'package:edf3/features/home_screen/presentation/widgets/my_app_bar.dart';
import 'package:edf3/features/home_screen/presentation/widgets/my_bottom_nav_bar.dart';
import 'package:edf3/features/home_screen/presentation/widgets/my_qr_button.dart';
import 'package:edf3/utils/consts.dart';
import 'package:edf3/utils/theme.dart';
import 'package:flutter/material.dart';
import 'utils/assets.dart';
import 'utils/home_screen.dart';
import 'utils/history_screen.dart';
import 'features/cards/presentation/widgets/card_widget.dart';

void main() {
  runApp(const MainMenu());
}

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  final List<Widget> screens = [
    const HomeScreen(),
    const HistoryScreen(),
    const SizedBox(),
    const Center(
      child: CreditCard(),
    ), // Placeholder for 'Cards' screen
    const Center(
      child: Text(
        'Profile Screen',
      ),
    ), // Placeholder for 'Profile' screen
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppTheme.mainBackGroundDecoration,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyAppBar(
          title: screensNames[currentIndex] ?? "",
          name: "Omar",
        ),
        body: Stack(
          children: [
            screens[currentIndex],
            Align(
              alignment: Alignment.bottomCenter,
              child: MyBottomNavigationBar(
                appIcons: const [
                  AppIcons.home,
                  AppIcons.history,
                  AppIcons.qr,
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
            ),
            Positioned(
              bottom: 28,
              left: 160,
              child: QrCodeButton(
                onTap: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
