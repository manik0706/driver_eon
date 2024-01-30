import 'package:flutter/material.dart';

class DriverRideCompleted extends StatefulWidget {
  const DriverRideCompleted({super.key});

  @override
  State<DriverRideCompleted> createState() => DriverRideCompletedState();
}

class DriverRideCompletedState extends State<DriverRideCompleted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Completed Ride'),
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
            completedRide(),
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
      flex: 1,
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.black,
        ),
      ));
}

Widget completedRide() {
  return Expanded(
    flex: 2,
    child: Container(
      width: double.infinity,
      height: 300,
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
          children: [
            completedRidesBox(),
          ],
        ),
      ),
    ),
  );
}

Widget completedRidesBox() {
  return Container(
    width: double.infinity,
    height: 400,
    //color: Colors.green,
    // decoration: BoxDecoration(
    //   color: Colors.black,
    //   borderRadius: BorderRadius.circular(2),
    //),
    child: Card(
      //clipBehavior: Clip.antiAliasWithSaveLayer,
      //elevation: 4,
      surfaceTintColor: Colors.white,
      //color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Align(
            alignment: AlignmentDirectional(-1, -1),
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            'https://picsum.photos/seed/84/600',
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'driver name',
                              style: TextStyle(
                                fontFamily: 'Readex Pro',
                                fontSize: 20,
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star_rate,
                                  color: Colors.yellow,
                                  size: 24,
                                ),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      'RS.200.00',
                      style: TextStyle(
                        fontFamily: 'Readex Pro',
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: 335,
            height: 47,
            decoration: BoxDecoration(
                //color: Colors.white,
                ),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.directions_car,
                        color: Colors.black,
                        size: 24,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: Text(
                          'car name',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      // Icon(
                      //   Icons.settings_outlined,
                      //   color: Colors.,
                      //   size: 24,
                      // ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: Text(
                          'Car no.',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 335,
            height: 67,
            // decoration: BoxDecoration(
            //   color: Colors.white,
            // ),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.radio_button_unchecked,
                        color: Colors.black,
                        size: 24,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        child: Text(
                          '21 neon St. Park Avenue,CA',
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.pin_drop,
                        color: Colors.black,
                        size: 24,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        child: Text(
                          'cermon earth space center',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 360,
            height: 52,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.grey.withOpacity(0.1),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    //width: 330,
                    height: 100,
                    // decoration: BoxDecoration(
                    //   color: Colors.white,
                    // ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 38, 0),
                          child: Text(
                            'Ride Complete',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Text(
                          '09-01-2024',
                          style: TextStyle(color: Colors.black),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(9, 0, 0, 0),
                          child: Text(
                            '07:28PM',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
