import 'package:flutter/material.dart';
import 'package:sunimo_app/widgets/product_card_widget.dart';
import '../models/product.dart';
import '../models/shop_category.dart';

class ProductsRepo {

    Map<String, List<Product>> productPool = {
        "Räume": [
            Product(productName: "Zucker Rune", productImage: Image.asset("assets/items/raeume/icon_raum_zucker.png"), description: "Zuckersüß", price: 123),
            Product(productName: "Gelbe Sonne", productImage: Image.asset("assets/items/raeume/icon_raum_lemon.png"), description: "Voll gelb ey", price: 111),
            Product(productName: "Mallorca Dream", productImage: Image.asset("assets/items/raeume/icon_raum_mallorca.png"), description: "Urlaubsfeeling", price: 123),
            Product(productName: "Jack die Bohne", productImage: Image.asset("assets/items/raeume/icon_raum_pflanze.png"), description: "Für den grünen Daumen", price: 111),
            Product(productName: "Auf hoher See", productImage: Image.asset("assets/items/raeume/icon_raum_see.png"), description: "Pass auf dass Du nicht untergehst", price: 123),
            Product(productName: "Pflaumenbaum", productImage: Image.asset("assets/items/raeume/icon_raum_pflaume.png"), description: "Schmeckt voll gut", price: 111),
        ],
        "Schaufeln": [
            Product(productName: "Kaka Master 2000", productImage: Image.asset("assets/items/schaufeln/Schaufel_Metal.png"), description: "Mit einem Wisch ist alles weg", price: 12),
            Product(productName: "Pipi weg 3000", productImage: Image.asset("assets/items/schaufeln/Schaufel_Rosa.png"), description: "Trocken ohne Ende", price: 10),
            Product(productName: "Wisch und weg", productImage: Image.asset("assets/items/schaufeln/Schaufel_Blau.png"), description: "Damit ist man hin und weg", price: 12),
            Product(productName: "Saubermann", productImage: Image.asset("assets/items/schaufeln/Schaufel_Gelb.png"), description: "Nimmt allen Schmutz auf", price: 10),
            Product(productName: "Staubtrocken", productImage: Image.asset("assets/items/schaufeln/Schaufel_Orange.png"), description: "Komplett pfurztrocken", price: 12),
        ],
    };

  List<Product>? getProductsFromCategory(ShopCategory category) {
    return productPool[category.categoryName];
  }

  Product? getProductByIndex(category, index) {
    return productPool[category.categoryName]?[index];
  }
}