import 'package:flutter/material.dart';
import 'package:food_app/Views/restaurant_location.dart';

Image foodimage = Image.asset('assets/images/dosa.jpeg');

class OccasionDetail extends StatefulWidget {
  int index;
  String title;

  OccasionDetail({this.index, this.title});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return OccasionDetailState();
  }
}

class OccasionDetailState extends State<OccasionDetail>
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
            "Marriage",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.pink,
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
            labelStyle: TextStyle(color: Colors.pink),
            unselectedLabelColor: Colors.black,
            labelColor: Colors.pink,
            controller: tabController,
            tabs: <Widget>[
              Tab(
                child: Text(
                  ("PROCURE"),
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
                    color: Colors.pink,
                    tiles: [
                      ListTile(title: Text("Dress"), trailing: Icon(Icons.add)),
                      ListTile(title: Text("Make Up"), trailing: Icon(Icons.add)),
                      ListTile(title: Text("Party Hall"), trailing: Icon(Icons.add)),
                      ListTile(title: Text("Decorations"), trailing: Icon(Icons.add)),
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
