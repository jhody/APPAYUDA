import 'package:flutter/material.dart';

class AnimatedContainerE extends StatefulWidget {
  @override
  _AnimatedContainerEState createState() =>
      _AnimatedContainerEState();
}

class _AnimatedContainerEState extends State<AnimatedContainerE> {
  // Propiedades iniciales del contenedor
  double _width = 100;
  double _height = 100;
  Color _color = Colors.blue;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  void _changeContainer() {
    setState(() {
      // Cambia las propiedades al azar
      _width = _width == 100 ? 200 : 100;
      _height = _height == 100 ? 150 : 100;
      _color = _color == Colors.blue ? Colors.red : Colors.blue;
      _borderRadius = _borderRadius == BorderRadius.circular(8)
          ? BorderRadius.circular(50)
          : BorderRadius.circular(8);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejemplo de AnimatedContainer')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                color: _color,
                borderRadius: _borderRadius,
              ),
              duration: Duration(seconds: 1),
              curve: Curves.easeInOut,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _changeContainer,
              child: Text('Cambiar contenedor'),
            ),
          ],
        ),
      ),
    );
  }
}
