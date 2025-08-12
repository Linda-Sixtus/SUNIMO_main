import '../models/shop_category.dart';



///The same as an Interface cause of that the fitting classes need to implement it
abstract class CategoryDatabaseInterface {

  /// Creates a new Sunimo in the DB. Returns true on success and false on failure
  bool create(ShopCategory category);

  /// Updates a Sunimo in the DB. Returns true on success and false on failure
  bool update(ShopCategory category);

  /// Deletes a Sunimo by its unique id
  bool delete(String uniqueId);

  /// Get a Sunimo from the database by its unique id
  ShopCategory? getById(String uniqueId);

  List<ShopCategory> getAll();
}