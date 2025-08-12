import 'package:sunimo_app/repositories/products_database_interface.dart';
import '../models/product.dart';
import '../models/shop_category.dart';

class ProductsDbRepo implements ProductsDatabaseInterface {

  List<Product>? getProductsFromCategory(ShopCategory category) {
    return null;
  }
  Product? getProductByIndex(category, index) {
    return null;
  }
    @override
  bool create(Product product){
    return true;
  }
   @override
  bool update(Product product){
    return true;
  }
   @override
  bool delete(String uniqueId){
    return true;
  }
   @override
  Product? getById(String uniqueId){
    return null;
  }

}