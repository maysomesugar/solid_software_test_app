import 'dart:math';

/// {@template rendIntGenerator}
/// A function that generates random int value between `min` and `max`
/// {@endtemplate}
int rendIntGenerator(int min, int max) {
  return min + Random().nextInt(max - min);
}
