import 'package:flutter/material.dart';
import 'package:route/screens/home_screen.dart';
import 'package:route/screens/screen_one.dart';
import 'package:route/screens/splash_screen.dart';

void main(){
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Route Management',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),

      initialRoute: '/',
      routes: {
        '/' : (context) => SplashScreen(),
        // '/home_screen' : (context) => HomeScreen(),
        HomeScreen.routeName : (context) => HomeScreen(),
        ScreenOne.routeName : (context) => ScreenOne(),
      },

    );
  }
}
