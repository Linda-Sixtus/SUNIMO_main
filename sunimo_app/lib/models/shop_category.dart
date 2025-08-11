import 'package:flutter/material.dart';
import 'product.dart';

class ShopCategory {

  String categoryName;
  Image categoryImage;
  List<Product> products = [];
  
  ShopCategory({required this.categoryImage, required this.categoryName});

  void setProducts(List<Product> products) {
    this.products = products;
  }

  void addProduct(Product product) {
    products.add(product);
  }

}
