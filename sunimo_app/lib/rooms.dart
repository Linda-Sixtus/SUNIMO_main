import 'package:flutter/material.dart';
import 'package:sunimo_app/sunimo_bg_stack.dart';
import 'interiors.dart';

// List of all rooms
Map<String, RoomInfo> roomInfos = 
 { "Raum 1": RoomInfo(
    interiors: [windowDay, curtain, schrank, plant, rug],
    name: 'Raum 1',
    bgImagePath: 'assets/MAINHOME_vorlage_RAUM1_Tapete_sugar_rune.png',
   // bgImagePath: 'assets/opening_BG.png',
    //roomLayout: Center(), // Placeholder for room layout
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

  addInterior(RoomInterior? interior) {
    if (interior != null) {
      interiors.add(interior);
    }
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
  Widget interior;
  double? x, y, width, height;
  bool centered = false;

  RoomInterior(name, {required this.interior, this.x, this.y, this.width, this.height, this.centered = false});
  Widget getInteriorLayout() {

   

    if (!centered) {
      return Positioned(
        left: x ?? 0,
        top: y ?? 0,
        child: SizedBox(
          width: width,
          height: height,
          child: interior
        ),
      );;
    } else {
      return Container(
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

class SunimoRoomBuilderStack extends StatelessWidget {
  final String roomName = "Raum 1";
  Iterable<Widget>? children;

  SunimoRoomBuilderStack(String roomName, {super.key, this.children});

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

    // get bgimage from roomname
    final String bgImagePath = roomInfo?.bgImagePath ?? '';

    List<Widget> stackItems = roomInfo?.getRenderedInteriors();
    stackItems.addAll(children ?? []);
    
    return SunimoBGStack(bgImagePath, children: stackItems);
  }
}

