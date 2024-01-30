import 'package:driver/driver_aadhaar.dart';
import 'package:driver/driver_dl.dart';
import 'package:driver/driver_profile.dart';
import 'package:driver/driver_rc.dart';
import 'package:flutter/material.dart';

class DriverInfo extends StatefulWidget {
  const DriverInfo({super.key});

  @override
  State<DriverInfo> createState() => _DriverDocState();
}

class _DriverDocState extends State<DriverInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        toolbarHeight: 94,
        backgroundColor: Color.fromRGBO(251, 212, 10, 1),
      ),
      body: SingleChildScrollView(
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
                  'Upload all documents to activate your account!',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  license(context),
                  SizedBox(
                    height: 10,
                  ),
                  profile_info(context),
                  SizedBox(
                    height: 10,
                  ),
                  vehicleRC(context),
                  SizedBox(
                    height: 10,
                  ),
                  aadhaar(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//driver license of the driver
Widget license(BuildContext context) {
  return Container(
    //height: 100,
    //alignment: Alignment.center,
    child: Card(
      elevation: 4,
      shadowColor: Colors.black,
      color: Colors.white,
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const DrivingLicenseScreen()),
          );
        },
        //minVerticalPadding: -1,
        title: Text(
          'Driving License',
          textAlign: TextAlign.justify,
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 22),
        ),

        trailing: RichText(
          text: TextSpan(
            children: [
              //TextSpan(text: 'Created with '),
              WidgetSpan(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Icon(
                    Icons.attach_file,
                    color: Colors.blue,
                    size: 18,
                  ),
                ),
              ),

              TextSpan(
                  text: 'Click to upload',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black.withOpacity(0.5),
                      decoration: TextDecoration.underline)),
            ],
          ),
        ),
        minVerticalPadding: 25,

        tileColor: Colors.white,
        dense: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
  );
}

//profile info of driver
Widget profile_info(BuildContext context) {
  return Container(
    //height: 100,
    //alignment: Alignment.center,
    child: Card(
      elevation: 4,
      shadowColor: Colors.black,
      color: Colors.white,
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const DriverProfileScreen()),
          );
        },
        //minVerticalPadding: -1,
        title: Text(
          'Profile Info',
          textAlign: TextAlign.justify,
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 22),
        ),

        trailing: RichText(
          text: TextSpan(
            children: [
              //TextSpan(text: 'Created with '),
              WidgetSpan(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Icon(
                    Icons.attach_file,
                    color: Colors.blue,
                    size: 18,
                  ),
                ),
              ),

              TextSpan(
                  text: 'Click to upload',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black.withOpacity(0.5),
                      decoration: TextDecoration.underline)),
            ],
          ),
        ),
        minVerticalPadding: 25,

        tileColor: Colors.white,
        dense: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
  );
}

//vehicle rc of driver
Widget vehicleRC(BuildContext context) {
  return Container(
    //height: 100,
    //alignment: Alignment.center,
    child: Card(
      elevation: 4,
      shadowColor: Colors.black,
      color: Colors.white,
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const VehicleRcScreen()),
          );
        },
        //minVerticalPadding: -1,
        title: Text(
          'Vehicle RC',
          textAlign: TextAlign.justify,
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 22),
        ),

        trailing: RichText(
          text: TextSpan(
            children: [
              //TextSpan(text: 'Created with '),
              WidgetSpan(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Icon(
                    Icons.attach_file,
                    color: Colors.blue,
                    size: 18,
                  ),
                ),
              ),

              TextSpan(
                  text: 'Click to upload',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black.withOpacity(0.5),
                      decoration: TextDecoration.underline)),
            ],
          ),
        ),
        minVerticalPadding: 25,

        tileColor: Colors.white,
        dense: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
  );
}

//aadhaar of driver
Widget aadhaar(BuildContext context) {
  return Container(
    //height: 100,
    //alignment: Alignment.center,
    child: Card(
      elevation: 4,
      shadowColor: Colors.black,
      color: Colors.white,
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const driverAadhaarScreen()),
          );
        },
        //minVerticalPadding: -1,
        title: Text(
          'Aadhaar Card',
          textAlign: TextAlign.justify,
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 22),
        ),

        trailing: RichText(
          text: TextSpan(
            children: [
              //TextSpan(text: 'Created with '),
              WidgetSpan(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Icon(
                    Icons.attach_file,
                    color: Colors.blue,
                    size: 18,
                  ),
                ),
              ),

              TextSpan(
                  text: 'Click to upload',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black.withOpacity(0.5),
                      decoration: TextDecoration.underline)),
            ],
          ),
        ),
        minVerticalPadding: 25,

        tileColor: Colors.white,
        dense: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
  );
}

Widget buttonDoc() {
  return SizedBox(
    height: 60,
    width: 380,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromRGBO(255, 211, 0, 0.8),
      ),
      onPressed: () {},
      child: const Text(
        'Submit',
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}
