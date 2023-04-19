import 'dart:ffi';

import 'package:e_store/model/product_model.dart';
import 'package:flutter/cupertino.dart';

class WishListController extends ChangeNotifier {
  List<Product> wishList = [];
  List<int> wishListDiscountPrize = [];
  String defaultWishListCat = '';
  int wishListIndex = 0;
  wishListIndexUpdate({required int index}) {
    index = wishListIndex;
    notifyListeners();
  }
}
