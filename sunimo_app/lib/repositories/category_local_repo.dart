import 'package:flutter/material.dart';
import 'package:sunimo_app/repositories/category_database_interface.dart';
import '../models/shop_category.dart';

class CategoryLocalRepo implements CategoryDatabaseInterface {


    CategoryLocalRepo();

    final List<ShopCategory> categories = [
      ShopCategory(uniqueId: "Näpfe", categoryImage: Image.asset("assets/items/Napf_Icon.png"), categoryName: "Näpfe"),
      ShopCategory(uniqueId: "Bürsten", categoryImage: Image.asset("assets/items/Bürste_Icon.png"), categoryName: "Bürsten"),
      ShopCategory(uniqueId: "Schaufeln", categoryImage: Image.asset("assets/items/Schaufel_Icon.png"), categoryName: "Schaufeln"),
      ShopCategory(uniqueId: "Specials", categoryImage: Image.asset("assets/items/specials_icon.png"), categoryName: "Specials"),
      ShopCategory(uniqueId: "Goodies", categoryImage: Image.asset("assets/items/leckerlie_Icon.png"), categoryName: "Goodies"),
      ShopCategory(uniqueId: "Möbel", categoryImage: Image.asset("assets/items/Haus_Icon.png"), categoryName: "Möbel"),
      ShopCategory(uniqueId: "Räume", categoryImage: Image.asset("assets/items/Raum_Icon.png"), categoryName: "Räume"),
      ShopCategory(uniqueId: "Eier", categoryImage: Image.asset("assets/items/Ei_Icon.png"), categoryName: "Eier"),
  ];


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
      return categories
        .where((category) =>  category.uniqueId == uniqueId)
        .cast<ShopCategory?>()
        .firstWhere((category) => category != null, orElse: () => null);
    }

    @override
    List<ShopCategory> getAll() {
      return categories;
    }

 }