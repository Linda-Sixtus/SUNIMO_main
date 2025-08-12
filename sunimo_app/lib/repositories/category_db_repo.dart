import 'package:sunimo_app/repositories/category_database_interface.dart';
import '../models/shop_category.dart';

class CategoryDbRepo implements CategoryDatabaseInterface {

    @override
    bool create(ShopCategory category) {
        return true;
    }

    @override
    bool update(ShopCategory category){
        return true;
    }

    @override
    bool delete(String uniqueKey){
        return true;
    }

    @override
    ShopCategory? getById(String uniqueId) {
      return null;
    }

    @override
    List<ShopCategory> getAll() {
      return [];
    }

 }