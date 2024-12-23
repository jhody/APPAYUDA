import 'package:flutter/material.dart';

class SliverAppBarE extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0, // Altura máxima cuando está expandido
            floating: false, // Si true, flota cuando haces scroll hacia abajo
            pinned: true, // Si true, queda fija en la parte superior
            snap: false, // Funciona con floating: hace que aparezca al instante
            flexibleSpace: FlexibleSpaceBar(
              title: Text('SliverAppBar Demo'),
              background: Image.network(
                'https://picsum.photos/800/400',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  leading: Icon(Icons.star),
                  title: Text('Item $index'),
                );
              },
              childCount: 50, // Número de elementos en la lista
            ),
          ),
        ],
      ),
    );
  }
}