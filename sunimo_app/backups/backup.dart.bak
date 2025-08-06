import 'package:flutter/material.dart';


// List of all rooms
Map<String, RoomInfo> roomInfos = 
 { "Raum 1": RoomInfo(
    interiors: [],
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
 };

// Raum
class RoomInfo {
  final String name;
  final String bgImagePath;
  Widget roomLayout;
  List<RoomInterior> interiors;

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

// Möbelstück
class RoomInterior {
  String? name;
  Widget? interior;
  double? x, y, width, height;

  RoomInterior(name, {interior, x, y, width, height});

  getInteriorLayout() {
    return interior;
    //return SizedBox(width: width, height: height, child: interior);
  }

  setInteriorLayout(Widget layout) {
    interior = layout;
  }
}

class SunimoBgImage extends StatelessWidget {
  final String roomName = "Raum 1";

  const SunimoBgImage(String roomName, {super.key});

  RoomInfo? getRoomInfo(String roomName) {
    return roomInfos[roomName];
  }

  @override
  Widget build(BuildContext context) {
    RoomInfo? roomInfo = getRoomInfo(roomName);

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
          const Text(
            "Room layout not found",
          ); // Return empty widget if no image path is found
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



//Hausaufgabe_sicherung



import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class PageTut extends StatelessWidget {
  const PageTut({super.key});

  @override
  Widget build(BuildContext context) {
    double iconTextSpacing = 8;
    return Scaffold(
      backgroundColor: Color(0xFFF2F5F4),
      appBar: AppBar(title: Center(child: const Text("Flutter layout demo"))),
      body: Column(
        children: [
          Image.asset("assets/dummys/dummy_image_5.jpg"),
          Padding(
            padding: EdgeInsets.all(24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  spacing: 8,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Oeschinen Lake Campground",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Kandersteg, Switzerland",
                      style: TextStyle(
                        letterSpacing: 1,
                        color: Colors.black.withValues(alpha: 2 / 3),
                      ),
                    ),
                  ],
                ),
                Row(
                  spacing: 4,
                  children: [
                    Icon(Icons.star, color: Color(0xFFEE0000)),
                    Text("42"),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 48,
            children: [
              Padding(
                padding: EdgeInsetsGeometry.all(16),
                child: Column(
                  spacing: iconTextSpacing,
                  children: [
                    Icon(Icons.phone, color: Colors.deepPurple),
                    Text("CALL", style: TextStyle(color: Colors.deepPurple)),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.all(16),
                child: Column(
                  spacing: iconTextSpacing,
                  children: [
                    Icon(Icons.send, color: Colors.deepPurple),
                    Text("ROUTE", style: TextStyle(color: Colors.deepPurple)),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.all(16),
                child: Column(
                  spacing: iconTextSpacing,
                  children: [
                    Icon(Icons.share, color: Colors.deepPurple),
                    Text("SHARE", style: TextStyle(color: Colors.deepPurple)),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Expanded(
              child: Column(children: [Text(lorem(paragraphs: 2, words: 60))]),
            ),
          ),
        ],
      ),
    );
  }
}

//Hausaufgabe_screen_bauen_2

import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class PageTut extends StatelessWidget {
  const PageTut({super.key});

  @override
  Widget build(BuildContext context) {
    double iconTextSpacing = 8;
    return Scaffold(
      backgroundColor: Color(0xFFF2F5F4),
      appBar: AppBar(title: Center(child: const Text("Flutter layout demo"))),
      body: Column(
        children: [
          Image.asset("assets/dummys/dummy_image_5.jpg"),
          Padding(
            padding: EdgeInsets.all(24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  spacing: 8,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Oeschinen Lake Campground",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Kandersteg, Switzerland",
                      style: TextStyle(
                        letterSpacing: 1,
                        color: Colors.black.withValues(alpha: 2 / 3),
                      ),
                    ),
                  ],
                ),
                Row(
                  spacing: 4,
                  children: [
                    Icon(Icons.star, color: Color(0xFFEE0000)),
                    Text("42"),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 48,
            children: [
              Padding(
                padding: EdgeInsetsGeometry.all(16),
                child: Column(
                  spacing: iconTextSpacing,
                  children: [
                    Icon(Icons.phone, color: Colors.deepPurple),
                    Text("CALL", style: TextStyle(color: Colors.deepPurple)),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.all(16),
                child: Column(
                  spacing: iconTextSpacing,
                  children: [
                    Icon(Icons.send, color: Colors.deepPurple),
                    Text("ROUTE", style: TextStyle(color: Colors.deepPurple)),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.all(16),
                child: Column(
                  spacing: iconTextSpacing,
                  children: [
                    Icon(Icons.share, color: Colors.deepPurple),
                    Text("SHARE", style: TextStyle(color: Colors.deepPurple)),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Expanded(
              child: Column(children: [Text(lorem(paragraphs: 2, words: 60))]),
            ),
          ),
        ],
      ),
    );
  }
}
