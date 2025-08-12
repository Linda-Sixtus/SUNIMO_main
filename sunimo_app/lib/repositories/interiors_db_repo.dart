import 'package:sunimo_app/models/interiors.dart';
import 'package:sunimo_app/repositories/interiors_database_interface.dart';

///The same as an Interface cause of that the fitting classes need to implement it
class InteriorsDbRepo implements InteriorsDatabaseInterface {

  @override
  bool create(RoomInterior interior) {
    return true;
  }

  @override
  bool update(RoomInterior interior){
    return true;
  }

  @override
  bool delete(String uniqueId){
    return true;
  }

  @override
  RoomInterior? getById(String uniqueId){
    return null;
  }

}