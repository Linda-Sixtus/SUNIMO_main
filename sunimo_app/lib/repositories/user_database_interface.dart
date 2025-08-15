import 'package:sunimo_app/models/user.dart';

///The same as an Interface cause of that the fitting classes need to implement it
abstract class UserDatabaseInterface {

  /// Creates a new User in the DB. Returns true on success and false on failure
  bool create(User user);

  /// Updates a User in the DB. Returns true on success and false on failure
  bool update(User user);

  /// Deletes a User by its unique id
  bool delete(String uniqueId);

  /// Get a User from the database by its unique id
  User? getById(String uniqueId);

  // Get the User by the username
  User? getByUsername(String username);

  // Get the User by the email
  User? getByEmail(String email);

}