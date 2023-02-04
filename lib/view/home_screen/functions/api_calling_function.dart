import 'dart:convert';

import 'package:e_store/model/product_details.dart';
import 'package:http/http.dart' as http;

List<ProductDetailsModel> userList = [];

Future<List<ProductDetailsModel>> getData() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
  var data = jsonDecode(response.body.toString());
  // if (response.statusCode == 200) {
  for (Map<String, dynamic> index in data) {
    userList.add(ProductDetailsModel.fromJson(index));
    // }
  }
  return userList;
}
