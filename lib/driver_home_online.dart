import 'package:driver/driver_going_destination.dart';
import 'package:driver/driver_profile.dart';
import 'package:flutter/material.dart';

class DriverHomeOnline extends StatefulWidget {
  const DriverHomeOnline({
    super.key,
  });

  @override
  State<DriverHomeOnline> createState() => _DriverHomeOnlineState();
}

class _DriverHomeOnlineState extends State<DriverHomeOnline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: Icon(
        //     Icons.arrow_back_ios_new,
        //     color: Colors.black,
        //   ),
        // ),
        title: Text(
          'Looking for riders',
          style: TextStyle(fontSize: 27, fontWeight: FontWeight.w600),
        ),
        toolbarHeight: 100,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        //automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => DriverProfileScreen())),
                );
              },
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black, //remove this when you add image.
                ),
                // child: imageCache(
                //   width: 120,
                //   height: 120,
                //   fit: BoxFit.cover,
                //   imageUrl: "imageUrl goes here",
                //),
              ),
            ),
          )
        ],
        //centerTitle: false,
        //elevation: 0,
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              customerAvailableRides(context),
              customerAvailableRides(context),
              customerAvailableRides(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget customerAvailableRides(BuildContext context) {
  return Padding(
    padding: EdgeInsets.all(12),
    child: Container(
      width: 377,
      height: 280,
      //color: Colors.green,
      // decoration: BoxDecoration(
      //   color: Colors.black,
      //   borderRadius: BorderRadius.circular(2),
      //),
      child: Card(
        //clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 3,
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
                                'rider name',
                                style: TextStyle(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.grade_outlined,
                                    //color: Colors.yellow,
                                    size: 20,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        ' 4.5',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 60,
                                      ),
                                      Text(
                                        'RS.200.00',
                                        style: TextStyle(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: 335,
              height: 69,
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
              width: 335,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromRGBO(255, 211, 0, 0.8)),
                borderRadius: BorderRadius.circular(6),
                color: Colors.transparent,
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
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 38, 0),
                            child: Text(
                              'Distance',
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
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 40,
                  width: 120,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(255, 0, 0, 1)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          // side: BorderSide(
                          //     //color: Color.fromRGBO(251, 212, 10, 1),
                          //     style: BorderStyle.solid),
                        ),
                      ),
                    ),
                    // style: ElevatedButton.styleFrom(
                    //   backgroundColor: Color.fromRGBO(255, 211, 0, 0.8),

                    // ),

                    onPressed: () {},
                    child: const Text(
                      'REJECT',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 120,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(81, 222, 112, 1)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          // side: BorderSide(
                          //     //color: Color.fromRGBO(251, 212, 10, 1),
                          //     style: BorderStyle.solid),
                        ),
                      ),
                    ),
                    // style: ElevatedButton.styleFrom(
                    //   backgroundColor: Color.fromRGBO(255, 211, 0, 0.8),

                    // ),

                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const DriverGoingDestinScreen()),
                      );
                    },
                    child: const Text(
                      'ACCEPT',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    ),
  );
}
