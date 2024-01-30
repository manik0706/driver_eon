import 'package:driver/driver_home_online.dart';
import 'package:driver/driver_info_input.dart';
import 'package:driver/driver_vehicle_info.dart';
import 'package:flutter/material.dart';

class DriverOtpScreen extends StatefulWidget {
  const DriverOtpScreen({super.key});

  @override
  State<DriverOtpScreen> createState() => _CustomerOtpScreenState();
}

class _CustomerOtpScreenState extends State<DriverOtpScreen> {
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
        title: Text(
          'Verify Phone Number',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        toolbarHeight: 100,
        centerTitle: true,
        //backgroundColor: Color.fromRGBO(255, 211, 0, 1).withOpacity(0.6),
      ),
      body: Column(
        children: [
          Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Container(
                    child: Text(
                  'Enter 6 digit verification code sent \nto your phone number',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                )),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          driverLogin(),
          txtBtn(),
          SizedBox(
            height: 40,
          ),
          buttonOtp(context),
        ],
      ),
    );
  }
}

Widget txtBtn() {
  return Container(
    child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.white)),
        onPressed: () {},
        child: const Text(
          "Resend OTP",
          style: TextStyle(color: Colors.black),
        )),
  );
}

Widget driverLogin() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 34, vertical: 36),
    child: TextField(
      cursorColor: Colors.black,
      decoration: InputDecoration(
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(width: 1, color: Colors.black),
          ),
          //labelText: 'Phone Number',
          labelStyle: TextStyle(color: Colors.black),
          hintText: 'OTP',
          //helperText: 'eg: ',

          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.black))
          // border: OutlineInputBorder(
          //     borderSide: BorderSide(color: Colors.black),
          //     borderRadius: BorderRadius.all(Radius.circular(8))),
          ),
    ),
  );
}

Widget buttonOtp(BuildContext context) {
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
          MaterialPageRoute(builder: (context) => const DriverVehicleInfo()),
        );
      },
      child: const Text(
        'VERIFY',
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}
