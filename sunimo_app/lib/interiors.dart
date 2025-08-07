import 'package:flutter/material.dart';
import 'rooms.dart';

RoomInterior schrank = RoomInterior(
  "Schrank",
  interior:
     Image.asset(
         "assets/Schrank_weiss_MOTHER.png"
     ),
  x: 90,
  y: 500,
 // width: 300,
 // height: 650,
);


RoomInterior plant = RoomInterior(
  "Pflanze",
  interior: Image.asset(
        "assets/PLANT_Monstera_hole.png"
      ),
  x: 270,
  y: 400,
//  width: 100,
//  height: 250,
);

RoomInterior windowDay = RoomInterior(
  "Fenster (Tag)",
  interior:  Image.asset(
        "assets/Fenster_MOTHER_Day.png"
  ),
  x: 10,
  y: 300,
  width: 300,
  height: 180,
  centered: true,
);

RoomInterior curtain = RoomInterior(
  "Vorhang (blau)",
  interior: Image.asset(
        "assets/Vorhang_blau_MOTHER.png"
      ),
  x: 50,
  y: 290,
  width: 300,
  height: 200,
); 

RoomInterior rug = RoomInterior(
  "Pflanze",
  interior: Image.asset(
        "assets/teppich_lila_MOTHER.png"
      ),
  x: 40,
  y: 650
);

RoomInterior bg = RoomInterior(
  "Tapete 1",
  interior: Image.asset(
        'assets/bg_big.png',
        fit: BoxFit.cover,
      ),
    x: -50
);