
import 'package:flutter/material.dart';


class SliverListE extends StatelessWidget {
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
                childCount: 50, // ¿Cuántos elementos quieres?
              ),
            ),
          ],
        ),
      ),
    );
  }
}
