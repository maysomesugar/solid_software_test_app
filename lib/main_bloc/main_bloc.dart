import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid_software_test_app/heplers/brightness_picker.dart';
import 'package:solid_software_test_app/heplers/rand_int_genetaror.dart';
import 'package:solid_software_test_app/main_bloc/main_bloc_event.dart';
import 'package:solid_software_test_app/main_bloc/main_bloc_state.dart';
import 'package:solid_software_test_app/models.dart/color_brightness.dart';

/// {@template MainBloc}
/// MainBloc is a class that provides `MainScreen` state to `MainScreen`
/// {@endtemplate}
class MainBloc extends Bloc<MainBlocEvent, MainBlocState> {
  /// {@marco MainBloc}
  MainBloc() : super(MainBlocInitState()) {
    on<MainBlocChangeColorEvent>(_changeColor);
  }

  void _changeColor(_, Emitter<MainBlocState> emit) {
    const int alpha = 255;
    final int red = rendIntGenerator(0, 255);
    final int green = rendIntGenerator(0, 255);
    final int blue = rendIntGenerator(0, 255);

    final Color color = Color.fromARGB(alpha, red, green, blue);

    final ColorBrightness colorBrightness = brightnessPicker(color);

    emit(
      MainBlocChangedColorState(
        color: color,
        colorBrightness: colorBrightness,
      ),
    );
  }
}
