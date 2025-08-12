import '../models/characters.dart';



///The same as an Interface cause of that the fitting classes need to implement it
abstract class CharactersDatabaseInterface {

  /// Creates a new Sunimo in the DB. Returns true on success and false on failure
  bool create(Sunimo sunimo);

  /// Updates a Sunimo in the DB. Returns true on success and false on failure
  bool update(Sunimo sunimo);

  /// Deletes a Sunimo by its unique id
  bool delete(String uniqueId);

  /// Get a Sunimo from the database by its unique id
  Sunimo? getById(String uniqueId);
}