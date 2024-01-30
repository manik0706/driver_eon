import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class VehicleRcScreen extends StatefulWidget {
  const VehicleRcScreen({super.key});

  @override
  State<VehicleRcScreen> createState() => _VehicleRcScreenState();
}

class _VehicleRcScreenState extends State<VehicleRcScreen> {
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
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Upload RC Images',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              // SizedBox(
              //   height: 30,
              // ),
              rcImage(),
              SizedBox(
                height: 0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '   Vehicle Brand',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              // SizedBox(
              //   height: 10,
              // ),
              textVehicleBrand(),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '   Vehicle Production year',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              textVehicleBrand(),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '   Vehicle Number',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              textVehicleBrand(),
              // SizedBox(
              //   height: 10,
              // ),
              buttonRc(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget rcImage() {
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

Widget textVehicleBrand() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
    child: TextField(
      cursorColor: Colors.black,
      decoration: InputDecoration(
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(width: 1, color: Colors.grey),
        ),

        labelText: 'Enter Vehicle Brand',
        labelStyle: TextStyle(color: Colors.grey),
        //hintText: 'hint text',
        helperText: 'eg: TATA Tiago ',

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

Widget textVehicleProductonYear() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
    child: TextField(
      cursorColor: Colors.black,
      decoration: InputDecoration(
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(width: 1, color: Colors.grey),
        ),

        labelText: 'Enter Vehicle Production Year',
        labelStyle: TextStyle(color: Colors.grey),
        //hintText: 'hint text',
        helperText: 'eg: 2022 ',

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

Widget textVehicleNumber() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
    child: TextField(
      cursorColor: Colors.black,
      decoration: InputDecoration(
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(width: 1, color: Colors.grey),
        ),

        labelText: 'Enter Vehicle Number',
        labelStyle: TextStyle(color: Colors.grey),
        //hintText: 'hint text',
        helperText: 'eg: UK22 SS 9999 ',

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

Widget buttonRc() {
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
