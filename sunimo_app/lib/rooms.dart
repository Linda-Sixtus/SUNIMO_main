import 'package:flutter/material.dart';
import 'interiors.dart';

// List of all rooms
Map<String, RoomInfo> roomInfos = 
 { "Raum 1": RoomInfo(
    interiors: [windowDay, curtain, schrank, plant, rug],
    name: 'Raum 1',
    bgImagePath: 'assets/MAINHOME_vorlage_RAUM1_Tapete_sugar_rune.png',
    roomLayout: Center(), // Placeholder for room layout
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

  RoomInterior(name, {required this.interior, this.x, this.y, this.width, this.height});

  Widget getInteriorLayout() {
    return Positioned(
        left: x ?? 0,
        top: y ?? 0,
        child: SizedBox(
          width: width,
          height: height,
          child: interior
        ),
      );
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
