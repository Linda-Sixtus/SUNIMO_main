import '../models/product.dart';



///The same as an Interface cause of that the fitting classes need to implement it
abstract class ProductsDatabaseInterface {

  /// Creates a new Product in the DB. Returns true on success and false on failure
  bool create(Product product);

  /// Updates a Product in the DB. Returns true on success and false on failure
  bool update(Product product);

  /// Deletes a Product by its unique id
  bool delete(String uniqueId);

  /// Get a Product from the database by its unique id
  Product? getById(String uniqueId);
}