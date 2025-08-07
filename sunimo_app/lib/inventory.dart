import 'package:flutter/material.dart';
import 'package:sunimo_app/menue_card.dart';
import 'package:sunimo_app/status_bar_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sunimo_app/characters.dart';
import 'sunimo_stats.dart';

class Inventory extends StatelessWidget{

  const Inventory({super.key,});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
              decoration: BoxDecoration(
              gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
              const Color.fromARGB(255, 254, 221, 255).withAlpha(255), 
              const Color.fromARGB(255, 226, 242, 252).withAlpha(255), 
              ],
            ),
            ),
            child: Center(
              child: Column(
                children: [
                  
                
              ],
            )
      )
    )
    );
  }
}
