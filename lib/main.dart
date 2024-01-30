import 'package:driver/driver_aadhaar.dart';
import 'package:driver/driver_activity.dart';
import 'package:driver/driver_dl.dart';
import 'package:driver/driver_going_destination.dart';
import 'package:driver/driver_home_online.dart';
import 'package:driver/driver_info_input.dart';
import 'package:driver/driver_login.dart';
import 'package:driver/driver_otp.dart';
import 'package:driver/driver_profile.dart';
import 'package:driver/driver_rc.dart';
import 'package:driver/driver_ride_completed.dart';
import 'package:driver/driver_setting.dart';
import 'package:driver/driver_signup.dart';
import 'package:driver/driver_terms.dart';
import 'package:driver/driver_vehicle_info.dart';
import 'package:driver/driver_wallet.dart';
import 'package:driver/splash_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
