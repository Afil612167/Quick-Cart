import 'dart:convert';
import 'package:e_store/model/product_details.dart';
import 'package:http/http.dart' as http;

List<Product> products = [];

Future<ProductInfo> fetchProductInfo() async {
  const url = 'https://dummyjson.com/products';
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    products =
        ProductInfo.fromJson(jsonDecode(response.body)).products!;
    print(products);
  }

  if (response.statusCode == 200) {
    return ProductInfo.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load ProductInfo');
  }
}

product() {}
