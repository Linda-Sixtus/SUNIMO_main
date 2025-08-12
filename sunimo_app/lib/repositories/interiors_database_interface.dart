import 'package:sunimo_app/models/interiors.dart';

///The same as an Interface cause of that the fitting classes need to implement it
abstract class InteriorsDatabaseInterface {

  /// Creates a new Product in the DB. Returns true on success and false on failure
  bool create(RoomInterior interior);

  /// Updates a Product in the DB. Returns true on success and false on failure
  bool update(RoomInterior interior);

  /// Deletes a Product by its unique id
  bool delete(String uniqueId);

  /// Get a Product from the database by its unique id
  RoomInterior? getById(String uniqueId);

}