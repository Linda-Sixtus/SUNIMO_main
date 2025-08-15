import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sunimo_app/models/interiors.dart';
import 'package:sunimo_app/repositories/characters_database_interface.dart';
import 'package:sunimo_app/repositories/rooms_database_interface.dart';
import 'package:sunimo_app/screens/login_screen.dart';
import 'package:sunimo_app/screens/sunimo_stats.dart';
import 'models/rooms.dart';
import 'models/characters.dart';
import 'screens/menue.dart';
import '../models/settings.dart';

List<RoomInterior> roomInteriors = [];

void main() {
  runApp(SunimoApp(title: 'SunimoApp'));
}

class SunimoApp extends StatelessWidget {
  SunimoApp({super.key, required this.title});
  final String title;

  final CharactersDatabaseInterface sunimoRepo = Settings.charactersRepo;
  final RoomsDatabaseInterface roomsRepo = Settings.roomsRepo;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    /// For now, get the sunimo with the unique id "123" from the database
    Sunimo? sunimo = sunimoRepo.getById("123");
    Room? room = roomsRepo.getById("Raum 1");

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sunimo',
      theme: ThemeData(
         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
         textTheme: TextTheme(
            bodyMedium: GoogleFonts.inter(),
         )
      ),
      home: Scaffold(
        // extendBody: true,
        //  extendBodyBehindAppBar: true,
        //  resizeToAvoidBottomInset: true,
        //  backgroundColor: Colors.transparent,
        body:
        
          LoginScreen(),
        
        /* 
        NICHT LÖSCHEN!!! NUR VORERST AUSKOMMENTIERT WEIL WIR DEN LOGIN SCREEN ANZEIGEN WOLLEN!!!!
        RoomBuilder(
          room ?? Room(uniqueId: "-1", name: "no room", interiors: []),
          key: null,
          children: [
            // MyHomePage(title: title),
            sunimo?.getAppearance() ?? Container(),
            TopButtonLayer(sunimo: sunimo,),
            ButtonLayer(),
            // SplashBgImage(child: SplashScreen(title: "Fluxi"))
          ],
        ),
        */



      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: widget.title,
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}


