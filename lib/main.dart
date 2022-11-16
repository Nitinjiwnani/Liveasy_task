import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:liveasy_task/screens/screen_five.dart';
import 'package:liveasy_task/screens/screen_four.dart';
import 'package:liveasy_task/screens/screen_one.dart';
import 'package:liveasy_task/screens/screen_three.dart';
import 'package:liveasy_task/screens/screen_two.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'screen_one',
      routes: {
        'screen_one': (context) => const ScreenOne(),
        'phone': (context) => ScreenTwo(),
        'otp': (context) => ScreenThree(),
        'profile': (context) => ScreenFour(),
        'nextscreen': (context) => ScreenFive(),
      },
    );
  }
}
