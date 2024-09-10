import 'package:edf3/features/cards/presentation/widgets/card_widget.dart';
import 'package:edf3/utils/assets.dart';
import 'package:edf3/utils/history_screen.dart';
import 'package:edf3/utils/home_screen.dart';
import 'package:flutter/material.dart';

Map<int, (String, AppIcons)> screensNames = {
  0: (
    "Home",
    AppIcons.home,
  ),
  1: (
    "History",
    AppIcons.history,
  ),
  2: (
    "Payment",
    AppIcons.qr,
  ),
  3: (
    "Cards",
    AppIcons.card,
  ),
  4: ("Profile", AppIcons.profile)
};

const List<Widget> screens = [
  HomeScreen(),
  HistoryScreen(),
  SizedBox(),
  Center(
    child: CreditCard(),
  ), // Placeholder for 'Cards' screen
  Center(
    child: Text(
      'Profile Screen',
    ),
  ), // Placeholder for 'Profile' screen
];
