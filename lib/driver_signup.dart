import 'package:driver/driver_login.dart';
import 'package:flutter/material.dart';

class DriverSignupScreen extends StatefulWidget {
  const DriverSignupScreen({super.key});

  @override
  State<DriverSignupScreen> createState() => _CustomerSignupScreenState();
}

class _CustomerSignupScreenState extends State<DriverSignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text('Login'),
        surfaceTintColor: Colors.transparent,
        toolbarHeight: 20,
        automaticallyImplyLeading: false,
        //backgroundColor: Color.fromRGBO(255, 211, 0, 1).withOpacity(0.6),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 40, 0, 0),
                    child: Container(
                        child: Text(
                      'Sign Up',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                    )),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 270,
                      width: 240,
                      child: Container(
                        child: Image.asset('assets/signuppic.png'),
                      ),
                    ),
                  ),
                ],
              ),
              // SizedBox(
              //   height: 10,
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: [
                      driverFirstName(),
                      SizedBox(
                        height: 10,
                      ),
                      driverLastName(),
                      SizedBox(
                        height: 10,
                      ),
                      driverEmail(),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              buttonSignup(),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DriverLoginScreen()),
                  );
                },
                child: Text(
                  'Back to Login',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                      decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buttonSignup() {
  return SizedBox(
    height: 60,
    width: 380,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromRGBO(255, 211, 0, 0.8),
      ),
      onPressed: () {},
      child: const Text(
        'SUBMIT',
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}

Widget driverFirstName() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
    child: TextField(
      cursorColor: Colors.black,
      decoration: InputDecoration(
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(width: 1, color: Colors.black),
        ),

        labelText: 'First Name',
        labelStyle: TextStyle(color: Colors.black),
        //hintText: 'hint text',
        //helperText: 'eg: ',

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(8))),
      ),
    ),
  );
}

Widget driverLastName() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
    child: TextField(
      cursorColor: Colors.black,
      decoration: InputDecoration(
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(width: 1, color: Colors.black),
        ),

        labelText: 'Last Name',
        labelStyle: TextStyle(color: Colors.black),
        //hintText: 'hint text',
        //helperText: 'eg: ',

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(8))),
      ),
    ),
  );
}

Widget driverEmail() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
    child: TextField(
      cursorColor: Colors.black,
      decoration: InputDecoration(
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(width: 1, color: Colors.black),
        ),

        labelText: 'Email',
        labelStyle: TextStyle(color: Colors.black),
        //hintText: 'hint text',
        //helperText: 'eg: ',

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(8))),
      ),
    ),
  );
}
