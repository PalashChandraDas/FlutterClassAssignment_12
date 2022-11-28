import 'package:flutter/material.dart';
import 'package:route/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    gotoHomeScreen(context);
    return Scaffold(
     // backgroundColor: Colors.amber,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: 100,
              width: 100,
              child: Image.asset("assets/icons/insta_logo.png"),
            ),
          ),
          Container(
            height: 10,
          ),
          const Center(
            child: SizedBox(
              height: 30,
              width: 30,
              child: CircularProgressIndicator(),
            ),
          ),
        ],
      )
    );
  }


  Future<void> gotoHomeScreen(BuildContext context)async {

    await Future.delayed(const Duration(seconds: 5));
    Navigator.pushNamedAndRemoveUntil(context, HomeScreen.routeName, (route) => false);

  }



}
