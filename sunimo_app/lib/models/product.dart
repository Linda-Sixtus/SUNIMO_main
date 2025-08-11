import 'package:flutter/material.dart';

class Product {

  final String productName;
  final Image productImage;
  final String description;
  bool? purchased = false;
  bool? available = true;
  final double price;

  Product({
    required this.productName, 
    required this.productImage, 
    required this.description, 
    this.purchased = false, 
    this.available = true,
    required this.price});

}