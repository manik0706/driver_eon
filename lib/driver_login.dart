import 'package:driver/driver_otp.dart';
import 'package:driver/driver_signup.dart';
import 'package:flutter/material.dart';

class DriverLoginScreen extends StatefulWidget {
  const DriverLoginScreen({super.key});

  @override
  State<DriverLoginScreen> createState() => _DriverLoginScreenState();
}

class _DriverLoginScreenState extends State<DriverLoginScreen> {
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
      body: SingleChildScrollView(
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
                      'Login',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Container(
                    child: Text(
                      'Welcome back! we are happy to have you.',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 270,
                    width: 240,
                    child: Container(
                      child: Image.asset('assets/login.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 20, 10, 0),
                  child: Container(
                      child: Text(
                    'OTP will be sent on this number',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  )),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            driverLogin(),
            SizedBox(
              height: 30,
            ),
            buttonLogin(context),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DriverSignupScreen()),
                );
              },
              child: Text(
                'SIGNUP',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    decoration: TextDecoration.underline),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget driverLogin() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
    child: TextField(
      keyboardType: TextInputType.phone, // Specify the input type
      cursorColor: Colors.black,
      decoration: InputDecoration(
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(width: 1, color: Colors.black),
        ),
        labelText: 'Phone Number',
        labelStyle: TextStyle(color: Colors.black),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
    ),
  );
}

Widget buttonLogin(BuildContext context) {
  const buttonWidth = 380.0;
  const buttonHeight = 60.0;

  return SizedBox(
    height: buttonHeight,
    width: buttonWidth,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromRGBO(255, 211, 0, 0.8),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DriverOtpScreen()),
        );
      },
      child: const Text(
        'Get OTP',
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}
