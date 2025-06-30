import 'package:flutter/material.dart';
import 'package:track/core/Colors/app_colors.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 120,
      child: Icon(
        Icons.track_changes,
        size: 120,
        color: AppColors.accentGreen,
      ),
    );
  }
}
