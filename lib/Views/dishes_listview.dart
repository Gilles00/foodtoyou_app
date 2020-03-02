import 'package:flutter/material.dart';

class DishesListView extends StatefulWidget {
  @override
  _DishesListViewState createState() => _DishesListViewState();
}

class _DishesListViewState extends State<DishesListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(

        children: ListTile.divideTiles(context: context,color: Colors.green, tiles: [
          ListTile(title: Text("Idlies")),
          ListTile(title: Text("Dosa")),
          ListTile(title: Text("Burger")),
          ListTile(title: Text("Pizzas")),
          ListTile(title: Text("Biriyani")),

        ]).toList(),
      ),
    );
  }
}
