import 'package:flutter/material.dart';
import 'rooms.dart';

RoomInterior schrank = RoomInterior(
  "Schrank",
  interior: Image.asset(
        "assets/Schrank_weiss_MOTHER.png"
      ),
  x: 90,
  y: 345,
 // width: 300,
 // height: 650,
);


RoomInterior plant = RoomInterior(
  "Pflanze",
  interior: Image.asset(
        "assets/PLANT_Monstera_hole.png"
      ),
  x: 240,
  y: 300,
//  width: 100,
//  height: 250,
);

RoomInterior windowDay = RoomInterior(
  "Fenster (Tag)",
  interior: Image.asset(
        "assets/Fenster_MOTHER_Day.png"
      ),
  x: 100,
  y: 150,
  width: 200,
  height: 200,
);

RoomInterior curtain = RoomInterior(
  "Vorhang (blau)",
  interior: Image.asset(
        "assets/Vorhang_blau_MOTHER.png"
      ),
  x: 90,
  y: 140,
  width: 220,
  height: 220,
);

RoomInterior rug = RoomInterior(
  "Pflanze",
  interior: Image.asset(
        "assets/teppich_lila_MOTHER.png"
      ),
  x: 20,
  y: 540,
);