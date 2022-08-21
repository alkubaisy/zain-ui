import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zain/Screens/home_screen/homeScreen.dart';
import 'package:zain/Screens/splash_screen/splashScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zain Iraq',
      home:SplashScreen() ,
    );
  }
}

