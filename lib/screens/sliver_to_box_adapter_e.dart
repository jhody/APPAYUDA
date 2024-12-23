import 'package:flutter/material.dart';


class SliverToBoxAdapterE extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            // Aquí ponemos un bloque especial con texto
            SliverToBoxAdapter(
              child: Container(
                height: 150, // Qué tan alto es el bloque
                color: Colors.blue, // El color del bloque
                child: Center(
                  child: Text(
                    'Soy un bloque especial',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            // Aquí ponemos una lista de elementos normales
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return ListTile(
                    title: Text('Elemento $index'),
                  );
                },
                childCount: 50, // Cuántos elementos quieres en la lista
              ),
            ),
          ],
        ),
      ),
    );
  }
}
