// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  late GoogleMapController mapController;
  final Set<Marker> markers = {};
  final LatLng _center = const LatLng(23.777, 90.399);
  List<LatLng> showLocation = [
    LatLng(23.770188, 90.424495), //hrllo
    LatLng(23.777119, 90.425755),
    LatLng(23.793295, 90.424385),
    LatLng(23.796060, 90.423951),
    LatLng(23.801341, 90.422923),
    LatLng(23.802195, 90.422769),
    LatLng(23.807857, 90.421524),
    LatLng(23.808314, 90.421492),
    LatLng(23.808559, 90.421466),
    LatLng(23.813730, 90.421070),
    LatLng(23.814740, 90.421166),
    LatLng(23.814397, 90.421197),
    LatLng(23.814109, 90.421222),
    LatLng(23.813750, 90.421245),
  ]; //location to show in map

  TextEditingController ID = TextEditingController();

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bus Tracker"),
      ),
      body: GoogleMap(
        markers: getmarkers(),
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0,
        ),
      ),
      // bottomNavigationBar: ,
    );
  }

  Set<Marker> getmarkers() {
    //markers to place on map
    setState(() {
      for (int i = 0; i < showLocation.length; i++) {
        markers.add(Marker(
          //add first marker
          markerId: MarkerId(showLocation.toString()),
          position: showLocation[i], //position of marker
          infoWindow: const InfoWindow(
            //popup info
            title: "Bus Number "
          ),
          icon: BitmapDescriptor.defaultMarker, //Icon for Marker
        ));
      }
    });
    return markers;
  }
}
