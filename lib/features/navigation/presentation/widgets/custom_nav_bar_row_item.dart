import 'package:edf3/utils/assets.dart';
import 'package:edf3/utils/theme.dart';
import 'package:flutter/material.dart';

class CustomNavBarRowItem extends StatelessWidget {
  final AppIcons icon;
  final String text;
  final bool isHightLighted;
  final ValueChanged onTap;
  final int index;
  const CustomNavBarRowItem({
    super.key,
    required this.icon,
    required this.text,
    required this.isHightLighted,
    required this.onTap,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    Widget myWidget = icon == AppIcons.qr
        ? ButtonNavigationBarItem(
            isHightLighted: isHightLighted,
            index: index,
            icon: icon,
            text: text)
        : ClipOval(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.grey[300]?.withOpacity(0.7),
                onTap: () {
                  if (index != 2) onTap(index);
                },
                child: ButtonNavigationBarItem(
                    isHightLighted: isHightLighted,
                    index: index,
                    icon: icon,
                    text: text),
              ),
            ),
          );
    return myWidget;
  }
}

class ButtonNavigationBarItem extends StatelessWidget {
  const ButtonNavigationBarItem({
    super.key,
    required this.isHightLighted,
    required this.index,
    required this.icon,
    required this.text,
  });

  final bool isHightLighted;
  final int index;
  final AppIcons icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    final Color baseColor =
        isHightLighted ? AppTheme.hightLighted : AppTheme.notHightLighted;
    final Image image = Image.asset(
      icon.getPath(),
      height: 24,
      width: 24,
      color: baseColor,
    );
    return SizedBox(
      height: 75,
      width: 70,
      child: Column(
        children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 17,
                    child: Divider(
                      thickness: 2,
                      color: isHightLighted && index != 2
                          ? baseColor
                          : Colors.transparent,
                      height: 20,
                    ),
                  )
                ],
              ),
            ] +
            (icon != AppIcons.qr
                ? [
                    image,
                    Text(text),
                  ]
                : []),
      ),
    );
  }
}
