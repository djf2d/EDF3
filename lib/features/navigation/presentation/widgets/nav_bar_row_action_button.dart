import 'package:edf3/utils/assets.dart';
import 'package:edf3/utils/theme.dart';
import 'package:flutter/material.dart';

class NavBarRowActionButton extends StatelessWidget {
  final ValueChanged<int> onTap;
  const NavBarRowActionButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 75,
        width: 75,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Container(
            height: 55,
            width: 55,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: FloatingActionButton(
              shape: const CircleBorder(),
              backgroundColor: AppTheme.hightLighted,
              onPressed: () {
                onTap(2);
              },
              child: Image.asset(
                AppIcons.qr.getPath(),
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
