// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:core';

class Product {
  int id;
  String title;
  String description;
  double price;
  double discountPercentage;
  double rating;
  double stock;
  String brand;
  String category;
  String thumbnail;
  List images;
  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.brand,
    required this.category,
    required this.thumbnail,
    required this.images,
  });
}
