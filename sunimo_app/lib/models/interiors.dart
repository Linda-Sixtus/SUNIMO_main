import 'package:flutter/material.dart';


class RoomInterior {
  String? name;
  String uniqueId;
  Widget interior;
  double? x, y, width, height;
  bool centered = false;

  RoomInterior(this.name, {
    required this.interior, 
    required this.uniqueId,
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
