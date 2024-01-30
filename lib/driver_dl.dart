//import 'dart:js';

import 'package:dotted_border/dotted_border.dart';
import 'package:driver/driver_home_online.dart';
import 'package:flutter/material.dart';

class DrivingLicenseScreen extends StatefulWidget {
  const DrivingLicenseScreen({super.key});

  @override
  State<DrivingLicenseScreen> createState() => _DrivingLicenseState();
}

class _DrivingLicenseState extends State<DrivingLicenseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
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
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                child: Text(
                  'Upload DL Images',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              // SizedBox(
              //   height: 30,
              // ),
              dlImage(),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '   Enter DL Number',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              textDL(),
              SizedBox(
                height: 140,
              ),
              buttonlicense(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget dlImage() {
  return Padding(
    padding: const EdgeInsets.all(40.0),
    child: Container(
      height: 130,
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: DottedBorder(
              borderType: BorderType.RRect,
              radius: Radius.circular(20),
              dashPattern: [6, 6],
              color: Colors.grey,
              strokeWidth: 1,
              child: InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Icon(Icons.upload_file),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Choose Front Image',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: DottedBorder(
              borderType: BorderType.RRect,
              radius: Radius.circular(20),
              dashPattern: [6, 6],
              color: Colors.grey,
              strokeWidth: 1,
              child: InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Icon(Icons.upload_file),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Choose Back Image',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget textDL() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
    child: TextField(
      cursorColor: Colors.black,
      decoration: InputDecoration(
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(width: 1, color: Colors.grey),
        ),

        labelText: 'DL Number',
        labelStyle: TextStyle(color: Colors.grey),
        //hintText: 'hint text',
        helperText: 'eg: IDNIODSH5421369 ',

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(8))),
      ),
    ),
  );
}

Widget buttonlicense(BuildContext context) {
  return SizedBox(
    height: 60,
    width: 380,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromRGBO(255, 211, 0, 0.8),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DriverHomeOnline()),
        );
      },
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
