import 'package:flutter/material.dart';
import 'package:food_app/Views/about_view.dart';
import 'package:food_app/Views/dishes_listview.dart';
import 'dart:ui' as ui;
import 'package:food_app/Views/restaurant_listview.dart';

class Homepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }
}

class HomePageState extends State<Homepage> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome App"),
        actions: <Widget>[
          InkResponse(
            onTap: (){},
            child: Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Icon(Icons.shopping_cart),
            ),
          )
        ],
        backgroundColor: Colors.pink,
        bottom: TabBar(
          unselectedLabelColor: Colors.white,
          labelColor: Colors.black,
          tabs: [
            new Tab(
                text: "OCCASIONS LIST",
                icon: new Icon(Icons.format_list_bulleted)),
            new Tab(
              text: "MERCHANTS",
              icon: Icon(Icons.transfer_within_a_station),
            ),
          ],
          controller: _tabController,
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text(
                "sample@gmail.com",
                style: TextStyle(color: Colors.black),
              ),
              accountName: Text(
                "Buddy",
                style: TextStyle(color: Colors.black),
              ),
              currentAccountPicture: CircleAvatar(
                  child:
                      ClipOval(child: Image.asset("assets/images/user.png"))),
              decoration: BoxDecoration(
                color: Colors.pink,
              ),
            ),
            ListTile(
              title: Text("Home", textAlign: TextAlign.center),
              leading: Icon(
                Icons.home,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Homepage()));
              },
            ),
            ListTile(
              title: Text("About", textAlign: TextAlign.center),
              leading: Icon(
                Icons.receipt,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutScreen()));
              },
            ),
          ],
        ),
      ),
      body: TabBarView(
        children: [Occasionspage(), MerchantsPage()],
        controller: _tabController,
      ),
    );
  }
}
