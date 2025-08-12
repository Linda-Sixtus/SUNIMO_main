import 'package:flutter/material.dart';
import 'package:sunimo_app/models/interiors.dart';

// Raum
class Room {
  final String name;
  Widget roomLayout;  // Ist das überhaupt nötig? kann man das Layout nicht in der main einfach groß fitted festlegen und bg genau so wie alle anderen raumteile eingebaut werden??
  List<RoomInterior?> interiors;
  String uniqueId;


  Room({
    required this.uniqueId,
    required this.name,
    this.roomLayout = const SizedBox(),
    required this.interiors,
  });

  void addInterior(RoomInterior? interior) {
    if (interior != null) {
      interiors.add(interior);
    }
  }
  List<RoomInterior?> getInteriors() {
    return interiors;
  }

  List<Widget> getRenderedInteriors() {
    List<Widget> interiorWidgets = [];
    for (var interior in interiors) {
      if (interior != null) {
        interiorWidgets.add(interior.getInteriorLayout());
      }
    }
    return interiorWidgets;
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
