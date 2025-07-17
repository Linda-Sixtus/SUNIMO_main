import 'package:flutter/material.dart';

class RoomInfo {
  final String name;
  final String bgImagePath;
  Widget roomLayout;
  List<RoomInterior> interiors = [];

  RoomInfo({
    required this.name,
    required this.bgImagePath,
    this.roomLayout = const SizedBox(),
    required this.interiors,
  });

  addInterior(RoomInterior interior) {
    interiors.add(interior);
  }

  List<RoomInterior> getInteriors() {
    return interiors;
  }

  getRenderedInteriors() {
    List<Widget> interiorWidgets = [];
    for (RoomInterior interior in interiors) {
      interiorWidgets.add(interior.getInteriorLayout());
    }
    return interiorWidgets;
  }
}

class RoomInterior {
  String? name;
  Widget? interior;
  double? x, y, width, height;

  RoomInterior(name, interior, x, y, width, heigth);

  getInteriorLayout() {
    return SizedBox(width: width, height: height, child: interior);
  }

  setInteriorLayout(Widget layout) {
    interior = layout;
  }
}

RoomInterior schrank = RoomInterior(
  "Schrank",
  Image.asset(
        "assets/Schrank_weiss_MOTHER.png",
        fit: BoxFit.none,
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
      ),
  20,
  20,
  100,
  100,
);

List<RoomInterior> roomInteriors = [];

List<RoomInfo> roomInfos = [
  RoomInfo(
    interiors: [schrank],
    name: 'Raum 1',
    bgImagePath: 'assets/MAINHOME_vorlage_RAUM1_Tapete_sugar_rune.png',
    roomLayout: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Hallo"),
          Container(
            color: const Color.fromARGB(0, 237, 168, 233),
            height: 200,
            width: 600,
            child: Text("Container 1"),
          ),
          Container(
            height: 200,
            width: double.infinity,
            color: const Color.fromARGB(0, 250, 162, 244),
            child: Text("Container 2"),
          ),
          Container(
            height: 200,
            width: double.infinity,
            color: const Color.fromARGB(0, 250, 162, 244),
            child: Text("Container 3"),
          ),
          // Add more widgets to represent the room layout
        ],
      ),
    ), // Placeholder for room layout
  ),
  // Add more rooms as needed
];

void main() {
  runApp(const SunimoApp(title: 'SunimoApp'));
}

class BgImage extends StatelessWidget {
  final String roomName = "Raum 1";
  RoomInfo? roomInfo = null;

  BgImage(String roomName, {super.key});

  RoomInfo? getRoomInfo(String roomName) {
    return roomInfos.firstWhere((room) => room.name == roomName);
  }

  @override
  Widget build(BuildContext context) {
    roomInfo = getRoomInfo(roomName);

    if (roomInfo == null && roomName.isNotEmpty) {
      return Center(
        child: Text("Room $roomName not found!"),
      ); // Return empty widget if roomInfo is null
    }

    String getImagePath() {
      return roomInfo?.bgImagePath ?? '';
    }

    // get bgimage from roomname
    final String bgImagePath = getImagePath();

    // If there is no image path name, then return the "layout"
    if (bgImagePath.isEmpty) {
      return roomInfo?.roomLayout ??
          const SizedBox(); // Return empty widget if no image path is found
    }

    // Otherwise, display an image with the given image name

   /* return Image.asset(
      bgImagePath,
      fit: BoxFit.none,
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
    );*/

    List<Widget> roomInteriors = [
      Image.asset(
        bgImagePath,
        fit: BoxFit.none,
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
      ),
    ];

    roomInteriors.addAll(roomInfo?.getRenderedInteriors());

    return Stack(children: roomInteriors);
  }
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
            BgImage('Raum 1'),
            MyHomePage(title: title),
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
