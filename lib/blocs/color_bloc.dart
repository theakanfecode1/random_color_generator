import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class ColorBloc {
  final _colorSubject = BehaviorSubject<Color>();
  Stream<Color> get colorStream => _colorSubject.stream;

  void generateColor() {
    final randomColor = Color.fromARGB(
      255,
      Random().nextInt(256),
      Random().nextInt(256),
      Random().nextInt(256),
    );
    _colorSubject.add(randomColor);
  }

  void resetColor() {
    _colorSubject.add(Colors.black);
  }

  void dispose() {
    _colorSubject.close();
  }
}