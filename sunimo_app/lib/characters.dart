import 'package:flutter/material.dart';


class Sunimo {
  String name;
  int age = 1;
  Widget? appearance;  // Look alike (currently)


  double gesundheit;
  double hunger;
  double hygiene;
  double notdurft;
  double zuneigung;
  double maxAge;

  // Stats kommen hier auch rein, Gefühle etc.


  Sunimo(this.name, {
    this.gesundheit = 100,
    this.hunger = 5,
    this.hygiene = 100,
    this.notdurft = 0,
    this.zuneigung = 50,
    this.maxAge = 1000,
    this.appearance,  // may change dynamically how you treat it
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


  Sunimo ai = Sunimo ("Ai", gesundheit: 90, hunger: 70, notdurft: 44, appearance: Image.asset("assets/SUNIMO_MOTHER_Al.png"));
  