import 'package:flutter/material.dart';

class UpcomingPaymentsListItem extends StatelessWidget {
  const UpcomingPaymentsListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: Container(
        height: 180,
        width: 140,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: Column(
            children: [
              Container(
                width: 45,
                height: 45,
                color: Colors.grey[300],
                child: const Center(child: Text('Icon')),
              ),
              const SizedBox(height: 15),
              const Text('Title'),
              const SizedBox(height: 18),
              const Text('Price in JOD'),
              const SizedBox(height: 4),
              const Text("day/month/year"),
            ],
          ),
        ),
      ),
    );
  }
}
