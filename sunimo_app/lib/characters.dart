import 'package:flutter/material.dart';


class Sunimo {
  String name;
  int age = 0;
  Widget? appearance;  // Look alike (currently)

  // Stats kommen hier auch rein, Gefühle etc.


  Sunimo(this.name);

  incAge() {
    age++;
  }

  setAppearance(Widget? appearance) {
    this.appearance = appearance;
  }

  getAppearance() {
    return Positioned(
        left: 20,
        top: 470,
        child: SizedBox(
          child: appearance
        ),
      );
  }

}
