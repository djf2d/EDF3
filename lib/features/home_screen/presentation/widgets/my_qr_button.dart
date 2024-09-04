import 'package:edf3/utils/assets.dart';
import 'package:edf3/utils/theme.dart';
import 'package:flutter/material.dart';

class QrCodeButton extends StatelessWidget {
  final ValueChanged<int> onTap;
  const QrCodeButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 60,
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.white,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: () {
              onTap(2);
            },
            child: Container(
              height: 50,
              width: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppTheme.hightLighted,
                boxShadow: [
                  BoxShadow(
                    color: AppTheme.shadowQR.withOpacity(1),
                    spreadRadius: 0.5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                  AppIcons.qr.getPath(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
