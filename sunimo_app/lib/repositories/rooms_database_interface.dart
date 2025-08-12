import 'package:sunimo_app/models/rooms.dart';

///The same as an Interface cause of that the fitting classes need to implement it
abstract class RoomsDatabaseInterface {

  /// Creates a new Room in the DB. Returns true on success and false on failure
  bool create(Room room);

  /// Updates a Room in the DB. Returns true on success and false on failure
  bool update(Room room);

  /// Deletes a Room by its unique id
  bool delete(String uniqueId);

  /// Get a Room from the database by its unique id
  Room? getById(String uniqueId);

}