//import 'dart:js';

import 'package:driver/driver_info_input.dart';
import 'package:flutter/material.dart';
//import 'package:pro/driver_doc.dart';

class DriverVehicleInfo extends StatefulWidget {
  const DriverVehicleInfo({super.key});

  @override
  State<DriverVehicleInfo> createState() => _DriverVehicleInfoState();
}

class _DriverVehicleInfoState extends State<DriverVehicleInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        toolbarHeight: 94,
        backgroundColor: Color.fromRGBO(251, 212, 10, 1),
      ),
      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Which type of vehicle do you use?',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  car(context),
                  SizedBox(
                    height: 20,
                  ),
                  bike(context),
                  SizedBox(
                    height: 20,
                  ),
                  auto(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//bike widget
Widget bike(BuildContext context) {
  return Container(
    //height: 150,
    //alignment: Alignment.bottomLeft,
    child: Card(
      elevation: 4,
      shadowColor: Color.fromRGBO(255, 255, 232, 1),
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: ((context) => const DriverInfo())),
          );
          //route to driver doc.
        },
        tileColor: Colors.white,
        minVerticalPadding: 25,
        //visualDensity: VisualDensity(vertical: 4),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            'assets/motor-sports 1.png',
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          'Bike',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 26,
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward,
          size: 25,
        ),
      ),
    ),
  );
}

//auto widget

Widget auto(BuildContext context) {
  return Container(
    //height: 150,
    //alignment: Alignment.bottomLeft,
    child: Card(
      elevation: 4,
      shadowColor: Color.fromRGBO(255, 255, 232, 1),
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: ((context) => const DriverInfo())),
          );
          //route to driver doc.
        },
        tileColor: Colors.white,
        minVerticalPadding: 25,
        //visualDensity: VisualDensity(vertical: 4),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            'assets/tuk-tuk 1.png',
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          'Auto',
          textAlign: TextAlign.justify,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 26),
        ),
        trailing: Icon(
          Icons.arrow_forward,
          size: 25,
        ),
      ),
    ),
  );
}

//car widget
Widget car(BuildContext context) {
  return Container(
    //height: 150,
    //alignment: Alignment.bottomLeft,
    child: Card(
      elevation: 4,
      shadowColor: Color.fromRGBO(255, 255, 232, 1),
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: ((context) => const DriverInfo())),
          );
          //route to driver doc.
        },
        tileColor: Colors.white,
        minVerticalPadding: 25,
        //visualDensity: VisualDensity(vertical: 4),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            'assets/car 1.png',
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          'Car',
          textAlign: TextAlign.justify,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 26),
        ),
        trailing: Icon(
          Icons.arrow_forward,
          size: 25,
        ),
      ),
    ),
  );
}
