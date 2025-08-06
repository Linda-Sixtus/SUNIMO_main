import 'package:flutter/material.dart';


class Sunimo {
  String name;
  int age = 0;
  Widget? appearance;  // Look alike (currently)


  double gesundheit;
  double hunger;
  double hygiene;
  double notdurft;
  double zuneigung;

  // Stats kommen hier auch rein, Gefühle etc.


  Sunimo(this.name, {
    this.gesundheit = 100,
    this.hunger = 5,
    this.hygiene = 100,
    this.notdurft = 0,
    this.zuneigung = 50
  });

  void incAge() {
    age++;
  }

  void setAppearance(Widget? appearance) {
    this.appearance = appearance;
  }
// Here is the position of the SUNIMO
  Widget getAppearance() {
    return Positioned(
        left: 50,
        top: 580,
        child: SizedBox(
          child: appearance
        ),
      );
  }

}
