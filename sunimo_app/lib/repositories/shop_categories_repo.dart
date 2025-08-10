import 'package:flutter/material.dart';
import 'package:sunimo_app/widgets/shop_category_item.dart';
import '../models/shop_category.dart';

class ShopCategoriesRepo {

  List<ShopCategory> categories = [
      ShopCategory(categoryImage: Image.asset("assets/items/Napf_Icon.png"), categoryName: "Näpfe"),
      ShopCategory(categoryImage: Image.asset("assets/items/Bürste_Icon.png"), categoryName: "Bürsten"),
      ShopCategory(categoryImage: Image.asset("assets/items/Schaufel_Icon.png"), categoryName: "Schaufeln"),
      ShopCategory(categoryImage: Image.asset("assets/items/specials_icon.png"), categoryName: "Specials"),
      ShopCategory(categoryImage: Image.asset("assets/items/leckerlie_Icon.png"), categoryName: "Goodies"),
      ShopCategory(categoryImage: Image.asset("assets/items/Haus_Icon.png"), categoryName: "Möbel"),
      ShopCategory(categoryImage: Image.asset("assets/items/Raum_Icon.png"), categoryName: "Räume"),
      ShopCategory(categoryImage: Image.asset("assets/items/Ei_Icon.png"), categoryName: "Eier"),
  ];

  List<ShopCategoryItem> getCategoryItems() {
    
    List<ShopCategoryItem> categoryItems = [];

    for (ShopCategory category in categories) {
      categoryItems.add(
          ShopCategoryItem(category: category,)
      );
    }

    return categoryItems;
  }
}



