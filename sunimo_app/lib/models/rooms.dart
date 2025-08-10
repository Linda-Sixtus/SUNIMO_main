import 'package:flutter/material.dart';
import '../repositories/interiors.dart';

// List of all rooms
Map<String, Room> rooms = 
 { "Raum 1": Room(
    interiors: [ bg, windowDay, curtain, schrank, rug, plant, ],
    name: 'Raum 1',
   // bgImagePath: 'assets/opening_BG.png',
    //roomLayout: Center(), // Placeholder for room layout
  ),
  // Add more rooms as needed
 };

// Hier muss die Klasse für das Hintergrundbild hin....
//NICHT den raum in einer anderen Klasse bauen..

// Raum
class Room {
  final String name;
  Widget roomLayout;  // Ist das überhaupt nötig? kann man das Layout nicht in der main einfach groß fitted festlegen und bg genau so wie alle anderen raumteile eingebaut werden??
  List<RoomInterior> interiors;

  Room({
    required this.name,
    this.roomLayout = const SizedBox(),
    required this.interiors,
  });

  void addInterior(RoomInterior? interior) {
    if (interior != null) {
      interiors.add(interior);
    }
  }
  List<RoomInterior> getInteriors() {
    return interiors;
  }

  List<Widget> getRenderedInteriors() {
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
  Widget interior;
  double? x, y, width, height;
  bool centered = false;

  RoomInterior(this.name, {
    required this.interior, 
    this.x, 
    this.y, 
    this.width, 
    this.height, 
    this.centered = false,
    });
  Widget getInteriorLayout() {
    if (!centered) {
      return Container(
        clipBehavior: Clip.none,
        child: Positioned(
          left: x ?? 0,
          top: y ?? 0,
          child: SizedBox(
            width: width,
            height: height,
            child: interior
          ),
        ),
      );
    } else {
      return SizedBox(
        width: 380, 
        height: 700, 
        child: Transform.translate(
          offset: Offset(x ?? 0, y ?? 0),
          child: 
            Column(
              crossAxisAlignment: CrossAxisAlignment.center, 
              children: [interior]
            ),
        )
      );
    }
  }
}

class RoomBuilder extends StatelessWidget {

  final Room room;
  final Iterable<Widget>? children;

  const RoomBuilder(this.room, {required  super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    
    List<Widget> stackItems = room.getRenderedInteriors();
    stackItems.addAll(children ?? []);
    
    return Stack(
      children: stackItems
    );
  }
}
