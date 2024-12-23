import 'package:flutter/material.dart';

class SliverFillRemainingE extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return ListTile(
                    title: Text('Elemento $index'),
                  );
                },
                childCount: 5, // Número de elementos en la lista
              ),
            ),
            // Aquí llenamos el espacio vacío con SliverFillRemaining
            SliverFillRemaining(
              child: Container(
                color: Colors.blueAccent,
                child: Center(
                  child: Text(
                    '¡Estoy llenando el espacio restante!',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
