import 'package:flutter/material.dart';

class DriverProfileScreen extends StatefulWidget {
  const DriverProfileScreen({super.key});

  @override
  State<DriverProfileScreen> createState() => DriverProfileScreenState();
}

class DriverProfileScreenState extends State<DriverProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        toolbarHeight: 100,
        backgroundColor: Color.fromRGBO(255, 211, 0, 1).withOpacity(0.6),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  // child: Text(
                  //   'Profile',
                  //   style: TextStyle(
                  //     color: Colors.grey,
                  //     fontSize: 25,
                  //   ),
                  // ),
                  ),
              SizedBox(
                height: 20,
              ),
              profileImage(),
              SizedBox(
                height: 50,
              ),
              firstName(),
              SizedBox(
                height: 10,
              ),
              lastName(),
              SizedBox(
                height: 10,
              ),
              phoneNumber(),
              SizedBox(
                height: 180,
              ),
              buttonprofileinfo(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget profileImage() {
  return CircleAvatar(
    radius: 58,
    backgroundImage: AssetImage("assets/png-2757379_640.png"),
    child: Stack(children: [
      Align(
        alignment: Alignment.bottomRight,
        child: CircleAvatar(
          radius: 18,
          backgroundColor: Colors.white70,
          child: Icon(Icons.camera),
        ),
      ),
    ]),
  );
}

Widget firstName() {
  return const TextField(
    decoration: InputDecoration(
      labelText: 'First Name',
      //hintText: 'hint text',
      //helperText: 'eg: TATA Tiago',
      border: OutlineInputBorder(),
    ),
  );
}

Widget lastName() {
  return const TextField(
    decoration: InputDecoration(
      labelText: 'Last Name',
      //hintText: 'hint text',
      //helperText: 'eg: TATA Tiago',
      border: OutlineInputBorder(),
    ),
  );
}

Widget phoneNumber() {
  return const TextField(
    decoration: InputDecoration(
      labelText: 'Phone Number',
      //hintText: 'hint text',
      helperText: 'eg: +91 1234567891',
      border: OutlineInputBorder(),
    ),
  );
}

Widget buttonprofileinfo() {
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
