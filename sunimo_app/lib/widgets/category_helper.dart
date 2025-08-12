import 'package:sunimo_app/repositories/category_database_interface.dart';
import '../models/shop_category.dart';
import '../widgets/shop_category_item.dart';

import '../models/settings.dart';

class CategoryHelper {

  late CategoryDatabaseInterface categoryRepo;

  CategoryHelper();

  ///   Generates a list of Category-Widgets from the defined Categories above 
  List<ShopCategoryItem> getCategoryItems() {
    categoryRepo = Settings.categoryRepo;
    List<ShopCategory> categories = categoryRepo.getAll();

    /// Start with an empty list of ShopCategoryItems (Widgets)
    List<ShopCategoryItem> categoryItems = [];

    /// Go through each ShopCategory-Item from the categoires-list above...
    for (ShopCategory category in categories) {
      /// ... and add its widget to the categoryItems-list
      categoryItems.add(
          ShopCategoryItem(category: category)
      );
    }

    return categoryItems;
  }

}