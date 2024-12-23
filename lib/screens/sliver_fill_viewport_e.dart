import 'package:flutter/material.dart';

class SliverFillViewportE extends StatelessWidget {
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
            // SliverFillViewport para llenar la pantalla
            SliverFillViewport(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    color: index.isEven ? Colors.blue : Colors.green,
                    child: Center(
                      child: Text(
                        'Elemento $index en el viewport',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                  );
                },
                childCount: 2, // Número de elementos en el viewport
              ),
            ),
          ],
        ),
      ),
    );
  }
}
