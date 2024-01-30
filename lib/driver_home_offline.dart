import 'package:flutter/material.dart';

class DriverHomeOffline extends StatefulWidget {
  const DriverHomeOffline({super.key});

  @override
  State<DriverHomeOffline> createState() => _DriverHomeOfflineState();
}

class _DriverHomeOfflineState extends State<DriverHomeOffline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Looking for riders near you'),
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            khali(),
            homeCard(),
          ],
        ),
      ),
    );
  }
}

// Widget mapBack() {
//   return Expanded(
//     child: GoogleMap(
//       controller: _model.googleMapsController,
//       onCameraIdle: (latLng) => _model.googleMapsCenter = latLng,
//       initialLocation: _model.googleMapsCenter ??=
//           LatLng(13.106061, -59.613158),
//       markerColor: GoogleMarkerColor.violet,
//       mapType: MapType.normal,
//       style: GoogleMapStyle.standard,
//       initialZoom: 14,
//       allowInteraction: true,
//       allowZoom: true,
//       showZoomControls: true,
//       showLocation: true,
//       showCompass: false,
//       showMapToolbar: false,
//       showTraffic: false,
//       centerMapOnMarkerTap: true,
//     ),
//   );
// }

Widget khali() {
  return Expanded(
      flex: 2,
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.black,
        ),
      ));
}

Widget homeCard() {
  return Expanded(
    flex: 1,
    child: Container(
      width: double.infinity,
      height: 400,
      decoration: BoxDecoration(
        //color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 3,
            color: Colors.white,
            offset: Offset(0, -1),
          )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    ),
  );
}
