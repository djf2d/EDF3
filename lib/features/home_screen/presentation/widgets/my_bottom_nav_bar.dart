import 'package:edf3/utils/assets.dart';
import 'package:edf3/utils/theme.dart';
import 'package:flutter/material.dart';

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
      backgroundColor: Colors.white,
      items: getImages()
          .map(
            (e) => BottomNavigationBarItem(
              icon: e.$1,
              label: e.$2 == 'qr' ? "" : e.$2,
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
