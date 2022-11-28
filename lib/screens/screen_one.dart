
import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  static const String routeName = '/screen_one';
  var myTitle = 'Screen One';

  @override
  Widget build(BuildContext context) {
    var myPassedData = ModalRoute.of(context)?.settings.arguments as Map;
    myTitle = myPassedData['title'];

    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: IconButton(onPressed: (){

            // Navigator.pushNamed(context, ScreenOne.routeName);
            Navigator.pop(context);

          }, icon: const Icon(Icons.home)),),
        ],
      ),
    );
  }
}
