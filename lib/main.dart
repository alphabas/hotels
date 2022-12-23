import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotels/login_screens/signInScreen.dart';
import 'package:hotels/login_screens/signUpScreen.dart';
import 'package:hotels/main_screens/home_creens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotel Booking',
      home: RegisterScreen(),
      // home: HomeScreens(),
    );
  }
}
