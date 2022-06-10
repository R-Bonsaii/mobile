import 'dart:math';
import 'package:bacakomik/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:bacakomik/SettingPage.dart';
import 'package:bacakomik/login.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:bacakomik/warna.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return MyHomePage();
            } else {
              return SettingPage();
            }
            ;
          }));
}
