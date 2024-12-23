import 'package:flutter/material.dart';

class SilverGridE extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    color: Colors.teal[(index % 9 + 1) * 100],
                    child: Center(
                      child: Text(
                        'Item $index',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                },
                childCount: 50, // Número de elementos
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // Número de columnas
                mainAxisSpacing: 10.0, // Espacio entre filas
                crossAxisSpacing: 10.0, // Espacio entre columnas
                childAspectRatio: 1.0, // Relación de aspecto (ancho/alto)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
