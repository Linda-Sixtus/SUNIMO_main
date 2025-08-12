import 'package:sunimo_app/models/rooms.dart';
import 'package:sunimo_app/repositories/rooms_database_interface.dart';

import '../models/settings.dart';


class RoomsLocalRepo implements RoomsDatabaseInterface {

  List<Room> rooms = [
    Room( uniqueId: "Raum 1", interiors: [ 
          Settings.interiorsRepo.getById("bg"),
          Settings.interiorsRepo.getById("windowDay"),
          Settings.interiorsRepo.getById("curtain"), 
          Settings.interiorsRepo.getById("schrank"),
          Settings.interiorsRepo.getById("rug"), 
          Settings.interiorsRepo.getById("plant"), 
    ], name: 'Raum 1', ),
  ];

  @override
  bool create(Room room) {
    return true;
  }

  @override
  bool update(Room room) {
  return true;
  }

  @override
  bool delete(String uniqueId){
  return true;
  }

  @override
  Room? getById(String uniqueId){
     return rooms
        .where((room) =>  room.uniqueId == uniqueId)
        .cast<Room?>()
        .firstWhere((room) => room != null, orElse: () => null);
  }

}