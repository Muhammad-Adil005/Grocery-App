// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
// class SampleMap extends StatelessWidget {
//    SampleMap({Key? key}) : super(key: key);
//   Completer<GoogleMapController> _controller = Completer();
//
//   static const LatLng _center = const LatLng(45.521563, -122.677433);
//
//   void _onMapCreated(GoogleMapController controller) {
//     _controller.complete(controller);
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Maps Sample App'),
//         backgroundColor: Colors.green[700],
//       ),
//       body: GoogleMap(
//         onMapCreated: _onMapCreated,
//         initialCameraPosition: CameraPosition(
//           target: _center,
//           zoom: 11.0,
//         ),
//       ),
//     );
//   }
// }