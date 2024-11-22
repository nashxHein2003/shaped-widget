import 'package:example/common/extensions/figma_extension.dart';
import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  textTheme: TextTheme(
    bodyLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      height: 24.0.toFigmaHeight(24),
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      height: 16.0.toFigmaHeight(16),
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      height: 12.0.toFigmaHeight(12),
    ),
  ),
);
