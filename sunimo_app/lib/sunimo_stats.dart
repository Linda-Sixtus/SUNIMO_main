import 'package:flutter/material.dart';
import 'package:sunimo_app/status_bar_widget.dart';

import 'package:sunimo_app/characters.dart';

class SunimoStats extends StatelessWidget{
  final Sunimo sunimo;

  const SunimoStats({super.key, required this.sunimo});

  @override
  Widget build(BuildContext context) {
    return  Container(
          decoration: BoxDecoration(
            color: Colors.white
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 100,),
                sunimo.getAppearance(),
                SizedBox(height: 20,),
                StatusBarWidget("Gesundheit", color: Color.fromARGB(255, 50, 232, 235), value: sunimo.gesundheit),
                SizedBox(height: 10,),
                StatusBarWidget("Hunger", color: Color.fromARGB(255, 137, 196, 244), value: sunimo.hunger),
                SizedBox(height: 10,),
                StatusBarWidget("Hygiene", color: Color.fromARGB(255, 239, 140, 231), value: sunimo.hygiene),
                SizedBox(height: 10,),
                StatusBarWidget("Notdurft", color: Color.fromARGB(255, 245, 240, 157), value: sunimo.notdurft),
                SizedBox(height: 10,),
                StatusBarWidget("Zuneigung", color: Color.fromARGB(255, 212, 149, 244), value: sunimo.zuneigung,),
              ]
             ),
          )
      
    );
  }
}