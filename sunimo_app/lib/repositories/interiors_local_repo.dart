import 'package:flutter/material.dart';
import 'package:sunimo_app/models/interiors.dart';
import 'package:sunimo_app/repositories/interiors_database_interface.dart';

///The same as an Interface cause of that the fitting classes need to implement it
class InteriorsLocalRepo implements InteriorsDatabaseInterface {

  List<RoomInterior> interiors = [
      RoomInterior("Schrank", uniqueId: "schrank", interior:Image.asset( "assets/Schrank_weiss_MOTHER.png"),x: 90,y: 500,),
      RoomInterior("Pflanze", uniqueId: "plant", interior: Image.asset("assets/PLANT_Monstera_hole.png"),x: 270,y: 400,),
      RoomInterior("Fenster (Tag)", uniqueId: "windowDay", interior:  Image.asset("assets/Fenster_MOTHER_Day.png"),x: 10,y: 300,width: 300,height: 180,centered: true,),
      RoomInterior("Vorhang (blau)", uniqueId: "curtain",interior: Image.asset("assets/Vorhang_blau_MOTHER.png"),x: 50,y: 290,width: 300,height: 200,),
      RoomInterior("Pflanze", uniqueId: "rug",interior: Image.asset( "assets/teppich_lila_MOTHER.png"),x: 40,y: 650),
      RoomInterior("Tapete 1", uniqueId: "bg", interior: Image.asset('assets/bg_big.png', fit: BoxFit.cover,),x: -50),
  ];

 @override
  bool create(RoomInterior interior) {
    return true;
  }

 @override
  bool update(RoomInterior interior){
    return true;
  }

 @override
  bool delete(String uniqueId){
    return true;
  }

  @override
  RoomInterior? getById(String uniqueId){
     return interiors
        .where((interior) =>  interior.uniqueId == uniqueId)
        .cast<RoomInterior?>()
        .firstWhere((interior) => interior != null, orElse: () => null);
  }

}