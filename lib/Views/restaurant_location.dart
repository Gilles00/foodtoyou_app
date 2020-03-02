import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class RestaurantMap extends StatefulWidget {
  @override
  State<RestaurantMap> createState() => RestaurantMapSampleState();
}

class RestaurantMapSampleState extends State<RestaurantMap> {
  GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Stack(
        children: <Widget>[
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
              target: LatLng(13.020017, 77.708972),
              zoom: 11,
            ),
            onMapCreated: (GoogleMapController controller) {
              mapController = controller;
            },
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: FloatingActionButton(
                tooltip: "Take me there",
                child: Icon(Icons.drive_eta),
                onPressed: () {},
                backgroundColor: Colors.green,
              )),
        ],
      ),
    );
  }
}
