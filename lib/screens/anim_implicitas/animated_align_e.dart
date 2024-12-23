import 'package:flutter/material.dart';

class AnimatedAlignE extends StatefulWidget {
  @override
  _AnimatedAlignEState createState() => _AnimatedAlignEState();
}

class _AnimatedAlignEState extends State<AnimatedAlignE> {
  Alignment _alignment = Alignment.center;

  void _moveBox() {
    setState(() {
      // Cambia la alineación a una posición diferente
      _alignment = _alignment == Alignment.center
          ? Alignment.topRight
          : Alignment.bottomLeft;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejemplo de AnimatedAlign')),
      body: Stack(
        children: [
          AnimatedAlign(
            alignment: _alignment,
            duration: Duration(seconds: 1),
            curve: Curves.easeInOut,
            child: Container(
              width: 50,
              height: 50,
              color: Colors.blue,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: _moveBox,
                child: Text('Mover cuadro'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
