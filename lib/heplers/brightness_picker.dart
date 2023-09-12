import 'dart:ui';

import 'package:solid_software_test_app/models.dart/color_brightness.dart';

/// {@template brightnessPicker}
/// A function that determines the `brightness` of a `color`
/// and returns it as `ColorBrightness`
/// {@endtemplate}
ColorBrightness brightnessPicker(Color color) {
  const int brightnessIntersection = 128;
  final double grayscale =
      (0.299 * color.red) + (0.587 * color.green) + (0.114 * color.blue);

  return grayscale > brightnessIntersection
      ? ColorBrightness.light
      : ColorBrightness.dart;
}
