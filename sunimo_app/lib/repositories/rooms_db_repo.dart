import 'package:sunimo_app/models/rooms.dart';
import 'package:sunimo_app/repositories/rooms_database_interface.dart';

class RoomsDbRepo implements RoomsDatabaseInterface {

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
    return null;
  }

}