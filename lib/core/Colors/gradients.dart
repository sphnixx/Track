import 'package:flutter/material.dart';
import '../Aligments/aligment.dart';
import 'colors.dart';

final Gradient luxorGradient = LinearGradient(
  begin: topLeft,
  end: bottomRight,
  colors: [AppColors.darkBlack, AppColors.matteGrey, AppColors.luxorGreen],
  stops: [0.0, 0.5, 1.0],
);
