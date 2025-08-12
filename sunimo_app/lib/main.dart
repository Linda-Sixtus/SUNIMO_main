import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sunimo_app/models/interiors.dart';
import 'package:sunimo_app/repositories/characters_database_interface.dart';
import 'package:sunimo_app/repositories/rooms_database_interface.dart';
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
        body: RoomBuilder(
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

class ButtonLayer extends StatelessWidget {
  const ButtonLayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white.withAlpha(204),
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: const Color.fromARGB(255, 220, 187, 239),
                width: 3,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsetsGeometry.all(4),
                      side: BorderSide(
                        color: const Color.fromARGB( 255, 220, 187, 239,),
                        width: 3,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    onPressed: () {},
                    child: Image(
                      image: AssetImage('assets/items/Schaufel_Icon.png'),
                      width: 78,
                      height: 78,
                    ),
                  ),
                  SizedBox(width: 16),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsetsGeometry.all(4),
                      side: BorderSide(
                        color: const Color.fromARGB( 255, 220, 187, 239,),
                        width: 3,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    onPressed: () {},
                    child: Image(
                      image: AssetImage("assets/items/Bürste_Icon.png"),
                      width: 78,
                      height: 78,
                    ),
                  ),
                  SizedBox(width: 16),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsetsGeometry.all(4),
                      side: BorderSide(
                        color: const Color.fromARGB( 255, 220, 187, 239,).withValues(),
                        width: 3,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    onPressed: () {},
                    child: Image(
                      image: AssetImage('assets/items/Napf_Icon.png'),
                      width: 78,
                      height: 78,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TopButtonLayer extends StatelessWidget {

  /// Use the local repo for now
  final Sunimo? sunimo;

  const TopButtonLayer({super.key, required this.sunimo});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SunimoStats(sunimo: sunimo),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/HOMEBUTTON.png',
                  width: 100,
                  alignment: Alignment.topLeft,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Menue(sunimo: sunimo)),
                  );
                },
                child: Image.asset(
                  'assets/MENUBUTTON_Anim_klick.png',
                  width: 100,
                  alignment: Alignment.topRight,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
