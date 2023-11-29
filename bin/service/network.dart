import 'dart:convert';

import 'package:http/http.dart';

import '../models/classes.dart';

class NetworkService {
  static const String baseUrl = '65634d4fee04015769a707a3.mockapi.io';
  static const String apiProduct = '/product';

  static Future<String> getData(String api) async {
    Uri url = Uri.https(baseUrl, api);
    Response response = await get(url);
    return response.body;
  }

  static Future<void> postData(Product product) async {
    Uri url = Uri.https(baseUrl, apiProduct);
    await post(
      url,
      body: json.encode(product.toJson()),
      headers: {'Content-Type': 'application/json'},
    );
  }

  static Future<void> deleteDataById(String id) async {
    Uri url = Uri.https(baseUrl, '$apiProduct/$id');

    await delete(url);
  }
  
}

