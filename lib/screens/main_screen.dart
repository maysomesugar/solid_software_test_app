import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid_software_test_app/main_bloc/main_bloc.dart';
import 'package:solid_software_test_app/main_bloc/main_bloc_event.dart';
import 'package:solid_software_test_app/main_bloc/main_bloc_state.dart';
import 'package:solid_software_test_app/models.dart/color_brightness.dart';

/// {@template MainScreen}
/// `MainScreen` is class of first screen that shown on user device.
/// Show a container with a randomly generate background color
/// and textfield in center of it.
/// {@endtemplate}
class MainScreen extends StatelessWidget {
  /// {@marco MainScreen}
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Duration animationDutarion = Duration(milliseconds: 200);
    final MainBloc mainBloc = BlocProvider.of<MainBloc>(context);

    const double textFontSize = 50;

    return BlocBuilder(
      bloc: mainBloc,
      buildWhen: (MainBlocState previous, MainBlocState current) =>
          previous.color != current.color,
      builder: (context, MainBlocState state) {
        return AnimatedSwitcher(
          duration: animationDutarion,
          child: GestureDetector(
            key: UniqueKey(),
            onTap: () {
              mainBloc.add(MainBlocChangeColorEvent());
            },
            child: Scaffold(
              backgroundColor: state.color,
              body: Center(
                child: Text(
                  'Hello world',
                  style: TextStyle(
                    fontSize: textFontSize,
                    color: state.colorBrightness == ColorBrightness.dart
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
