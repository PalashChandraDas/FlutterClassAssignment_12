import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  static const String routeName = '/home_screen';
  var appBarTitle = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: IconButton(onPressed: (){

            Navigator.pushNamed(context, HomeScreen.routeName, arguments: {
              'title': 'second screen',
            });

          }, icon: const Icon(Icons.local_airport)),),
        ],
      ),
    );
  }
}
