import 'package:flutter/material.dart';
import 'package:sunimo_app/repositories/characters_database_interface.dart';
import 'package:sunimo_app/repositories/rooms_database_interface.dart';
import '../models/rooms.dart';
import '../models/characters.dart';
import '../models/settings.dart';
import '../widgets/button_layers.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final CharactersDatabaseInterface sunimoRepo = Settings.charactersRepo;
  final RoomsDatabaseInterface roomsRepo = Settings.roomsRepo;

  @override
  Widget build(BuildContext context) {
    Sunimo? sunimo = sunimoRepo.getById("123");
    Room? room = roomsRepo.getById("Raum 1");

    return Scaffold(
      body: RoomBuilder(
        room ?? Room(uniqueId: "-1", name: "no room", interiors: []),
        key: null,
        children: [
          // MyHomePage(title: title),
          sunimo?.getAppearance() ?? Container(),
          TopButtonLayer(sunimo: sunimo),
          ButtonLayer(),
          // SplashBgImage(child: SplashScreen(title: "Fluxi"))
        ],
      ),
    );
  }
}
