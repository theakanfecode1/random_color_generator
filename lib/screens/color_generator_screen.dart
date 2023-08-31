import 'package:flutter/material.dart';
import 'package:random_color_generator/blocs/color_bloc.dart';
import 'package:random_color_generator/utils/color_utils.dart';

class ColorGeneratorScreen extends StatefulWidget {
  @override
  State<ColorGeneratorScreen> createState() => _ColorGeneratorScreenState();
}

class _ColorGeneratorScreenState extends State<ColorGeneratorScreen> with TickerProviderStateMixin {
  final ColorBloc _colorBloc = ColorBloc();
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,

    )..repeat(reverse:true);
    _animation = CurvedAnimation(
        parent: _controller,
        curve: Curves.easeIn
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
          key: Key('change_color_button'),
          onTap: _colorBloc.generateColor,
          child: StreamBuilder<Color>(
            stream: _colorBloc.colorStream,
            initialData: Colors.black,
            builder: (context, snapshot) {
              final backgroundColor = snapshot.data;

              return Container(
                color: backgroundColor,
                child: FadeTransition(
                  opacity: _animation,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Center(
                        child: Text(
                          'Hello there',
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        ColorUtils.formatColor(backgroundColor),
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          key: Key('reset_color_button'),
          onPressed: _colorBloc.resetColor,
          tooltip: 'Reset Color',
          child: const Icon(Icons.refresh),
        ),
      );
  }

  @override
  void dispose() {
    _colorBloc.dispose();
    _controller.dispose();
    super.dispose();
  }
}