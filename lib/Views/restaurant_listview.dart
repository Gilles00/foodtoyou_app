import 'package:flutter/material.dart';
import 'package:food_app/Views/restaurant_detailpage.dart';
class Occasionspage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(

        children: ListTile.divideTiles(context: context,color: Colors.pink, tiles: [
          ListTile(title: Text("Marriage"), onTap: (){  Navigator.push(context,MaterialPageRoute(builder: (context) => OccasionDetail()));}),
          ListTile(title: Text("Birthday Parties")),
          ListTile(title: Text("Public Occasions")),
        ]).toList(),
      ),
    );
  }
}

