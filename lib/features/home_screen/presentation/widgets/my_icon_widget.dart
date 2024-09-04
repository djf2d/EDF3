import 'package:flutter/material.dart';

class MyIconWidget extends StatelessWidget {
  const MyIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.notifications_none_sharp, color: Colors.black),
      onPressed: () {
        // Handle notification icon press
      },
    );
  }
}
