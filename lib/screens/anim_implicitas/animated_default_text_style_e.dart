import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleE extends StatefulWidget {
  @override
  _AnimatedDefaultTextStyleEState createState() =>
      _AnimatedDefaultTextStyleEState();
}

class _AnimatedDefaultTextStyleEState
    extends State<AnimatedDefaultTextStyleE> {
  bool _isLargeText = false;

  void _toggleTextStyle() {
    setState(() {
      _isLargeText = !_isLargeText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejemplo de AnimatedDefaultTextStyle')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedDefaultTextStyle(
              style: TextStyle(
                fontSize: _isLargeText ? 40 : 20,
                color: _isLargeText ? Colors.blue : Colors.red,
                fontWeight: _isLargeText ? FontWeight.bold : FontWeight.normal,
              ),
              duration: Duration(seconds: 1),
              curve: Curves.easeInOut,
              child: Text('Texto Animado'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleTextStyle,
              child: Text('Cambiar estilo de texto'),
            ),
          ],
        ),
      ),
    );
  }
}