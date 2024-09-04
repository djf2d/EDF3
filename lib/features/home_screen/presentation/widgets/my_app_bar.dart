import 'package:edf3/features/home_screen/presentation/widgets/my_icon_widget.dart';
import 'package:edf3/utils/consts.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String name;

  const MyAppBar({
    required this.title,
    super.key,
    required this.name,
  });

  // The preferredSize should reflect the height you want for the AppBar
  @override
  Size get preferredSize => const Size(
        double.infinity,
        kToolbarHeight,
      ); // Matches toolbarHeight

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Stack(
        children: [
          Center(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 22,
              ),
            ),
          ),
          if (title == screensNames[0]) MyAppBarBottomRow(name: name),
        ],
      ),
      centerTitle: true,
    );
  }
}

class MyAppBarBottomRow extends StatelessWidget {
  const MyAppBarBottomRow({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
              const MyIconWidget()
            ],
          ),
        ),
      ],
    );
  }
}
