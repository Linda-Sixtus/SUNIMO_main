import 'dart:async';

import 'package:flutter/material.dart';
import 'interiors.dart';


class SplashBgImage extends StatelessWidget {
  final Widget child;
  const SplashBgImage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      width: double.infinity,
      height: double.infinity,
      // decoration: BoxDecoration(
      //  image: DecorationImage(
       
      //   image: Image.asset(
      //     'assets/opening_BG.png',
      //     fit: BoxFit.fill,
      //    // 
      //   //  alignment: Alignment.center,
      //       ) .image
      //        //fit: BoxFit.cover,
      // )
      
      // ), 
      //child: child,
      );
  }
}
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return  Stack(
          children: [
            bg.interior,
            Padding(
            padding: EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/Ei.png',
                      width: 200,
                      
                      alignment: Alignment.center,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                const Text('Sometimes the destiny chooses you..', style: TextStyle(color: Colors.white)),
                Text(
                  "You have to choose your own path",
                  style: TextStyle(fontSize: 21, color: Colors.white)),
                  //'$_counter', style: Theme.of(context).textTheme.headlineMedium,
              ],
            ),
          ),
          ]
        );
  }
}
