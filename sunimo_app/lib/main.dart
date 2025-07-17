import 'package:flutter/material.dart';
import 'rooms.dart';
import 'characters.dart';

List<RoomInterior> roomInteriors = [];

Sunimo? ai;

void main() {

  ai = Sunimo ("Ai");
  ai?.setAppearance( 
      Image.asset("assets/SUNIMO_MOTHER_Al.png")
  );

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
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        //  backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            SunimoBgImage('Raum 1'),
            MyHomePage(title: title),
            ai?.getAppearance() ?? Text("Ai is not at home"),
            TopButtonLayer(),
            ButtonLayer(),
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
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: const Color.fromARGB(255, 95, 30, 91).withOpacity(0.2),
                width: 2,
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
                      padding: EdgeInsetsGeometry.all(15),
                      side: BorderSide(
                        color: const Color.fromARGB(
                          255,
                          95,
                          30,
                          91,
                        ).withOpacity(0.2),
                        width: 2,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    onPressed: () {},
                    child: Image(
                      image: AssetImage('assets/Schaufel_Icon.png'),
                      width: 70,
                      height: 50,
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsetsGeometry.all(15),
                      side: BorderSide(
                        color: const Color.fromARGB(
                          255,
                          95,
                          30,
                          91,
                        ).withOpacity(0.2),
                        width: 2,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    onPressed: () {},
                    child: Image(
                      image: AssetImage('assets/Bürste_Icon.png'),
                      width: 70,
                      height: 50,
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsetsGeometry.all(15),
                      side: BorderSide(
                        color: const Color.fromARGB(
                          255,
                          95,
                          30,
                          91,
                        ).withOpacity(0.2),
                        width: 2,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    onPressed: () {},
                    child: Image(
                      image: AssetImage('assets/Napf_Icon.png'),
                      width: 70,
                      height: 50,
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
          padding: EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: Image.asset(
                  'assets/HOMEBUTTON.png',
                  width: 100,
                  // height: 100,
                  alignment: Alignment.topLeft,
                ),
              ),
              InkWell(
                onTap: () {},
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
      ],
    );
  }
}
