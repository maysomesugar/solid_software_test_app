import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid_software_test_app/main_bloc/main_bloc.dart';
import 'package:solid_software_test_app/screens/main_screen.dart';

void main() {
  runApp(const Main());
}

/// {@template Main}
/// `Main` is a class that provides `MainBloc` state to `MainScreen`
/// {@endtemplate}
class Main extends StatelessWidget {
  /// {@marco Main}
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => MainBloc(),
        child: const MainScreen(),
      ),
    );
  }
}
