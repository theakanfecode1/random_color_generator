import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:random_color_generator/blocs/color_bloc.dart';

void main() {
  group('ColorBloc', () {
    late ColorBloc colorBloc;

    setUp(() {
      colorBloc = ColorBloc();
    });

    tearDown(() {
      colorBloc.dispose();
    });

    test('Reset color updates the color stream to black', () {
      colorBloc.resetColor();
      expect(colorBloc.colorStream, emits(Colors.black));
    });
  });
}
