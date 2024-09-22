import 'package:edf3/utils/assets.dart';
import 'package:edf3/utils/theme.dart';
import 'package:flutter/material.dart';

class NavBarRowActionButton extends StatelessWidget {
  final ValueChanged<int> onTap;
  final String heroTag;
  const NavBarRowActionButton({
    super.key,
    required this.onTap,
    required this.heroTag,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FloatingActionButton(
        heroTag: heroTag,
        shape: const CircleBorder(),
        backgroundColor: AppTheme.hightLighted,
        onPressed: () {
          onTap(2);
        },
        child: Image.asset(
          AppIcons.qr.getPath(),
          color: Colors.white,
        ),
        // ),
      ),
    );
  }
}
