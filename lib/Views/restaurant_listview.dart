import 'package:flutter/material.dart';
import 'package:food_app/Views/restaurant_detailpage.dart';

Image foodimage = Image.asset('assets/images/dosa.jpeg');

class ResturantListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LayoutBuilder(
      builder: (context, constraint) {
        double height = constraint.biggest.height;
        double width = constraint.biggest.width;
        return ListView.separated(
          key: PageStorageKey("list_data"),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RestaurantDetail(index: index,title: "Dosa Cafe"),
                  ),
                );
              },
              child: RestaurantListItem(
                width: width,
                height: height,
                index: index,
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Container();
          },
          itemCount: 10,
        );
      },
    );
  }
}

class TextSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[Text("Dosa cafe"), Text("Masala Dosa")],
            ),
          ),
        ),
        Container(
          child: RaisedButton(
            onPressed: () {},
            child: Text("Estimated Delivery : 20 mins"),
          ),
        ),
      ],
    );
  }
}

class RestaurantListItem extends StatelessWidget {
  double height;
  double width;
  int index;

  RestaurantListItem({this.width, this.height, this.index});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      height: height / 2,
      child: Column(
        children: <Widget>[
          Expanded(
              child: Hero(
            tag: index,
            child: Container(
              width: width,
              child: foodimage,
            ),
          )),
          TextSection()
        ],
      ),
    );
  }
}
