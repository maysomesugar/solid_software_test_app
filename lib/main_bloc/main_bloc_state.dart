import 'package:flutter/material.dart';
import 'package:solid_software_test_app/models.dart/color_brightness.dart';

/// {@template MainBlocState}
/// Base class for `MainBlocStates`
/// {@endtemplate}
abstract class MainBlocState {
  /// A `MainBlocState` class field that contains
  /// color of `MainScreen` background
  final Color color;

  /// A `MainBlocState` class field that contains colorBrigthness
  /// what the color of the text on the home screen is based on
  final ColorBrightness colorBrightness;

  /// {@marco MainBlocState}
  MainBlocState({
    this.color = Colors.white,
    this.colorBrightness = ColorBrightness.light,
  });
}

/// {@template MainBlocInitState}
/// `MainBloc` start state
/// {@endtemplate}
class MainBlocInitState extends MainBlocState {
  /// {@marco MainBlocInitState}
  MainBlocInitState() : super();
}

/// {@template MainBlocChangedColorState}
/// A class for emiting on color changing event
/// {@endtemplate}
class MainBlocChangedColorState extends MainBlocState {
  /// {@marco MainBlocChangedColorState}
  MainBlocChangedColorState({
    required super.color,
    required super.colorBrightness,
  });
}
