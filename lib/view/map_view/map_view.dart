import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapViewDirection extends StatefulWidget {
  const MapViewDirection({super.key});

  @override
  State<MapViewDirection> createState() => _MapViewState();
}

class _MapViewState extends State<MapViewDirection> {
  GoogleMapController? mapController;

  final LatLng _center =const LatLng(10.0182789, 76.3425504);
  
  void _onMapCreated(GoogleMapController controller){
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0,
          )),
    );
  }
}