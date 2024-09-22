import 'package:edf3/features/navigation/presentation/cubit/navigation_cubit.dart';
import 'package:edf3/features/navigation/presentation/widgets/bottom_navigation_bar.dart';
import 'package:edf3/features/navigation/presentation/widgets/curve_paint.dart';
import 'package:edf3/features/navigation/presentation/widgets/nav_bar_row_action_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomNavBarRow extends StatelessWidget {
  const CustomNavBarRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      color: Colors.transparent,
      child: Stack(
        children: [
          // DONT REMOVE THIS, this is supposed to draw the curve around the middle circle.
          CustomPaint(
            foregroundPainter: DrawCurve(),
            child: ColoredBox(
              color: Colors.transparent,
              child: NavBarRowActionButton(
                heroTag: 'paintTag',
                onTap: (value) {
                  // IGNORE
                },
              ),
            ),
          ),
          const BottomNavigationBarAligned(),
          NavBarRowActionButton(
            heroTag: 'buttonTag',
            onTap: (value) =>
                context.read<NavigationCubit>().changeScreen(value),
          ),
        ],
      ),
    );
  }
}
