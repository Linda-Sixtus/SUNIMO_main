import 'package:flutter/material.dart';
import 'package:sunimo_app/sunimo_stats.dart';
import 'rooms.dart';
import 'characters.dart';
import 'menue.dart';

List<RoomInterior> roomInteriors = [];

void main() {
  runApp(const SunimoApp(title: 'SunimoApp'));
}
class SunimoApp extends StatelessWidget {
  const SunimoApp({super.key, required this.title});
  final String title;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Sunimo',
     // theme: ThemeData(
     //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
     // ),
      home: Scaffold(
       // extendBody: true,
      //  extendBodyBehindAppBar: true,
      //  resizeToAvoidBottomInset: true,
        //  backgroundColor: Colors.transparent,
        body: 

          RoomBuilder(rooms["Raum 1"] ?? Room(name: "no room", interiors: []),
            key: null,
            children: [
              // MyHomePage(title: title),
              ai.getAppearance(),
              TopButtonLayer(),
              ButtonLayer(),

              // SplashBgImage(child: SplashScreen(title: "Fluxi"))
            ]
          )
            
      )
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
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: const Color.fromARGB( 
                  255,
                  220, 
                  187, 
                  239).withOpacity(1.0),
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
                        color: const Color.fromARGB(
                           255,
                          220, 
                          187, 
                          239
                        ).withOpacity(1.0),
                        width: 3,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    onPressed: () {},
                    child: Image(
                      image: AssetImage('assets/Schaufel_Icon.png'),
                      width: 78,
                      height: 78,
                    ),
                  ),
                  SizedBox(width: 16),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsetsGeometry.all(4),
                      side: BorderSide(
                        color: const Color.fromARGB(
                          255,
                          220, 
                          187, 
                          239
                        ).withOpacity(1.0),
                        width: 3,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    onPressed: () {},
                    child: Image(
                      image: AssetImage("assets/Bürste_Icon.png"),
                      width: 78,
                      height:78,
                    ),
                  ),
                  SizedBox(width: 16),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsetsGeometry.all(4),
                      side: BorderSide(
                        color: const Color.fromARGB(
                          255,
                          220, 
                          187, 
                          239
                        ).withOpacity(1.0),
                        width: 3,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    onPressed: () {},
                    child: Image(
                      image: AssetImage('assets/Napf_Icon.png'),
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
  const TopButtonLayer({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.only(top: 50, left: 20, right: 20, bottom:0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {

                    // Test
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SunimoStats(sunimo: ai))
                    );

                },
                child: Image.asset(
                  'assets/HOMEBUTTON.png',
                  width: 100,
                  // height: 100,
                  alignment: Alignment.topLeft,
                ),
              ),
              InkWell(
                onTap: () {

                 Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Menue(sunimo: ai))
                    );

                },
                child: Image.asset(
                  'assets/MENUBUTTON_Anim_klick.png',
                  width: 100,
                  //S height: 100,
                  alignment: Alignment.topRight,
                ),
              ),
            ],
          ),
        ),
       /* StatusBarWidget(
          "Fluxi", 
          color: const Color.fromARGB(255, 36, 217, 184),
          value: 30,
          max: 100,
        ),
         StatusBarWidget(
          "Gerry", 
          color: const Color.fromARGB(255, 72, 30, 226),
          value: 80,
          max: 100,
        ),*/
      ],
    );
  }
}
