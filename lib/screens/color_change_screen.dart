import 'package:flutter/material.dart';
import 'package:random_color_generator/blocs/color_bloc.dart';
import 'package:random_color_generator/utils/color_utils.dart';

class ColorChangeScreen extends StatefulWidget {
  @override
  State<ColorChangeScreen> createState() => _ColorChangeScreenState();
}

class _ColorChangeScreenState extends State<ColorChangeScreen> {
  final ColorBloc _colorBloc = ColorBloc();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GestureDetector(
          onTap: _colorBloc.changeColor,
          child: StreamBuilder<Color>(
            stream: _colorBloc.colorStream,
            initialData: Colors.black,
            builder: (context, snapshot) {
              final backgroundColor = snapshot.data;

              return Container(
                color: backgroundColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Center(
                      child: Text(
                        'Hello there',
                        style: TextStyle(fontSize: 24, color: Colors.white,fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      ColorUtils.formatColor(backgroundColor),
                      style: const TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _colorBloc.resetColor,
          tooltip: 'Reset Color',
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _colorBloc.dispose();
    super.dispose();
  }
}
