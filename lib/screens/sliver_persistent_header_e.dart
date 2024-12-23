import 'package:flutter/material.dart';

class SliverPersistentHeaderE extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            // SliverPersistentHeader para un encabezado que se queda en la parte superior
            SliverPersistentHeader(
              pinned: true, // Mantener el encabezado fijo
              delegate: _SliverAppBarDelegate(
                child: Container(
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      'Encabezado Fijo',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),
            ),
            // Lista de elementos
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return ListTile(
                    title: Text('Elemento $index'),
                  );
                },
                childCount: 50, // Número de elementos en la lista
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  _SliverAppBarDelegate({required this.child});

  @override
  double get maxExtent => 200.0; // Altura máxima del encabezado
  @override
  double get minExtent => 100.0; // Altura mínima del encabezado

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }
}
