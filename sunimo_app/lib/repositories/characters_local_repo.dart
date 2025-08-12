import 'package:flutter/material.dart';
import 'package:sunimo_app/repositories/characters_database_interface.dart';
import '../models/characters.dart';

class CharactersLocalRepo implements CharactersDatabaseInterface {

    List<Sunimo> sunimos = [
        Sunimo(
          "Ai",
          uniqueId: "123", //till now just one unique ID to test -----------------------------------
          gesundheit: 90,
          hunger: 70,
          notdurft: 44,
          appearance: Image.asset("assets/SUNIMO_MOTHER_Al.png"),
        )
    ];


    @override
    bool create(Sunimo sunimo) {
        return true;
    }

    @override
    bool update(Sunimo sunimo){
        return true;
    }

    @override
    bool delete(String uniqueKey){
        return true;
    }

    @override
    Sunimo? getById(String uniqueId) {
      return sunimos
        .where((sunimo) =>  sunimo.uniqueId == uniqueId)
        .cast<Sunimo?>()
        .firstWhere((sunimo) => sunimo != null, orElse: () => null);
    }

 }