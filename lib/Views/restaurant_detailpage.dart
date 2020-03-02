import 'package:flutter/material.dart';
import 'package:food_app/Views/restaurant_location.dart';

Image foodimage = Image.asset('assets/images/dosa.jpeg');

class RestaurantDetail extends StatefulWidget {
  int index;
  String title;

  RestaurantDetail({this.index, this.title});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RestaurantDetailState();
  }
}

class RestaurantDetailState extends State<RestaurantDetail>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.green,
          actions: <Widget>[
            InkResponse(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Icon(Icons.shopping_cart),
              ),
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            Container(
                height: MediaQuery.of(context).size.height / 3.5,
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                child: Hero(
                  tag: widget.index,
                  child: foodimage,
                )),
            FlatButton(
              onPressed: () {},
              child: Text("Estimated Delivery to you : 20 Mins"),
              color: Colors.green,
            ),
            Expanded(
              child: DetailTabView(
                tabController: tabController,
              ),
            )
          ],
        ));
  }
}

class DetailTabView extends StatelessWidget {
  TabController tabController;

  DetailTabView({this.tabController});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          child: TabBar(
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide.none,
            ),
            labelStyle: TextStyle(color: Colors.green),
            unselectedLabelColor: Colors.black,
            labelColor: Colors.green,
            controller: tabController,
            tabs: <Widget>[
              Tab(
                child: Text(
                  ("FOOD MENU"),
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  ("LOCATE IT"),
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  ("REVIEWS"),
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          color: Colors.white,
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: <Widget>[
              Container(
                  child: ListView(
                children: ListTile.divideTiles(
                    context: context,
                    color: Colors.green,
                    tiles: [
                      ListTile(title: Text("Idlies"), trailing: Icon(Icons.add)),
                      ListTile(title: Text("Set Dosa"),trailing: Icon(Icons.add)),
                      ListTile(title: Text("Onion Dosa"),trailing: Icon(Icons.add)),
                      ListTile(title: Text("Masal Dosa"), trailing: Icon(Icons.add)),
                      ListTile(title: Text("Ghee roast"), trailing: Icon(Icons.add)),
                      ListTile(title: Text("Podi Dosa"), trailing: Icon(Icons.add)),
                      ListTile(title: Text("Rava Dosa"), trailing: Icon(Icons.add)),
                      ListTile(title: Text("Ghee Masal Dosa"), trailing: Icon(Icons.add)),
                      ListTile(title: Text("Chapatis"), trailing: Icon(Icons.add)),
                      ListTile(title: Text("Pongal"), trailing: Icon(Icons.add)),
                      ListTile(title: Text("Vada with Sambar"), trailing: Icon(Icons.add)),
                      ListTile(title: Text("Poori"), trailing: Icon(Icons.add)),
                    ]).toList(),
              )),
              RestaurantMap(),
              Center(child: Text("Yet to Come!!", style: TextStyle(fontSize: 25.0),))
            ],
          ),
        )
      ],
    );
  }
}
