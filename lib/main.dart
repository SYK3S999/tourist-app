import 'package:flutter/material.dart';
import 'package:wassim_app/screens/login_screen.dart';
import 'package:wassim_app/screens/monument_details.dart';
import 'package:wassim_app/screens/registration_screen.dart';
import 'package:wassim_app/screens/restaurants.dart';

import 'screens/monuments.dart';
import 'widgets/caroussel2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Grandstander'),
        home: const RegistrationPage());
  }
}
