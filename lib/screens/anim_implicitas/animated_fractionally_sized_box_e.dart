import 'package:flutter/material.dart';

class AnimatedFractionallySizedBoxE extends StatefulWidget {
  @override
  _AnimatedFractionallySizedBoxEState createState() =>
      _AnimatedFractionallySizedBoxEState();
}

class _AnimatedFractionallySizedBoxEState
    extends State<AnimatedFractionallySizedBoxE> {
  double _widthFactor = 0.5;
  double _heightFactor = 0.5;

  void _changeSize() {
    setState(() {
      // Cambia las fracciones de tamaño entre dos valores
      _widthFactor = _widthFactor == 0.5 ? 0.8 : 0.5;
      _heightFactor = _heightFactor == 0.5 ? 0.3 : 0.5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejemplo de AnimatedFractionallySizedBox')),
      body: Center(
        child: AnimatedFractionallySizedBox(
          widthFactor: _widthFactor,
          heightFactor: _heightFactor,
          alignment: Alignment.center,
          duration: Duration(seconds: 1),
          curve: Curves.easeInOut,
          child: Container(
            color: Colors.blue,
            child: Center(
              child: Text(
                'Tamaño Animado',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeSize,
        child: Icon(Icons.aspect_ratio),
      ),
    );
  }
}