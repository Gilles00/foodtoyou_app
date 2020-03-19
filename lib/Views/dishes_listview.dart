import 'package:flutter/material.dart';

class MerchantsPage extends StatefulWidget {
  @override
  _MerchantsPageState createState() => _MerchantsPageState();
}

class _MerchantsPageState extends State<MerchantsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(

        children: ListTile.divideTiles(context: context,color: Colors.pink, tiles: [
          ListTile(title: Text("Raymonds"),),
          ListTile(title: Text("The Park Avenue")),
          ListTile(title: Text("Rolex")),
        ]).toList(),
      ),
    );
  }
}
