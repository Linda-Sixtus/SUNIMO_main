import 'package:flutter/material.dart';

class Sunimo {
  final String uniqueId;  // Random unique hash id
  String name;
  int age = 1;
  Widget? appearance; // Look alike (currently)
  double gesundheit;
  double hunger;
  double hygiene;
  double notdurft;
  double zuneigung;
  double maxAge;

  // Stats kommen hier auch rein, Gefühle etc.
  Sunimo(
    this.name, {
    required this.uniqueId,  // Will be set on create
    this.gesundheit = 100,
    this.hunger = 5,
    this.hygiene = 100,
    this.notdurft = 0,
    this.zuneigung = 50,
    this.maxAge = 1000,
    this.appearance, // may change dynamically how you treat it
  });
  void incAge() {
    age++;
  }

  void setAppearance(Widget? appearance) {
    this.appearance = appearance;
  }

  // Here is the position of the SUNIMO
  Widget getAppearance() {
    return Positioned(left: 50, top: 580, child: SizedBox(child: appearance));
  }
}

