// ignore_for_file: avoid_print

import 'package:e_store/model/product_model.dart';
import 'package:e_store/prouducts/product_list.dart';
import 'package:flutter/foundation.dart';

class ProductController extends ChangeNotifier {
  String defaultCategory = 'smartphones';
  List<Product> currentProduct = [];
  List<int> discountPrizeCurrentProduct = [];

  List<Product> flashDeals = [];
  List<int> discountPrizeFlashDeals = [];

  categoryChange({required String cat}) {
    defaultCategory = cat;
    notifyListeners();
    productUpdate();
  }

  productUpdate() {
    try {
      currentProduct.clear();
      discountPrizeCurrentProduct.clear();
      for (var element in products) {
        if (element.category == defaultCategory) {
          currentProduct.add(element);
          double temp =
              element.price - element.price * element.discountPercentage / 100;

          discountPrizeCurrentProduct.add(temp.toInt());
        }

        if (element.discountPercentage > 15) {
          flashDeals.add(element);
          double temp =
              element.price - element.price * element.discountPercentage / 100;
          discountPrizeFlashDeals.add(temp.toInt());
        }
      }
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }
}
