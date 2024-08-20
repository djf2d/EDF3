import 'package:edf3/utils/assets.dart';
import 'package:edf3/utils/theme.dart';
import 'package:flutter/material.dart';
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
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Edfa3")),
        ),
        body: const Center(
          child: CreditCard(),
        ),
        bottomNavigationBar:
            // SizedBox(height: 450, width: double.infinity, child: Navigation()),
            Stack(
          children: [
            MyBottomNavigationBar(
              appIcons: const [
                AppIcons.home,
                AppIcons.history,
                AppIcons.card,
                AppIcons.profile
              ],
              index: index,
              onTap: (value) {
                setState(() {
                  index = value;
                });
              },
            ),
            Positioned(
              left: 160,
              child: Container(
                height: 40,
                width: 40,
                color: AppTheme.hightLighted,
                child: Image.asset(
                  AppIcons.qr.getPath(),
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
      onTap: (value) {
        onTap(value);
      },
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
