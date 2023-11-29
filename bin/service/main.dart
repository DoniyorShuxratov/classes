import 'dart:convert';
import './network.dart';
import '../models/classes.dart';

void main() async{
  String apiEndpoint = NetworkService.apiProduct;
  String data = await NetworkService.getData(apiEndpoint);

  List<Product> products = (json.decode(data) as List).map((json) => Product.fromJson(json)).toList();

  for (Product product in products) {
    print('Product ID: ${product.id}');
    print('Name: ${product.name}');
    print('Title: ${product.title}');
    print('Price: ${product.price}');
    print('Image: ${product.image}');
    print('-----------------------------');
  }

  List<Product> newProducts = [
    Product('0', 'Product 1', 'Title 1', 49.99, 'image1.jpg'),
    Product('0', 'Product 2', 'Title 2', 79.99, 'image2.jpg'),
  ];


  for (Product newProduct in newProducts) {
    await NetworkService.postData(newProduct);
    print('New product posted successfully: ${newProduct.name}');
  }

  String idToDelete = '4'; 
  await NetworkService.deleteDataById(idToDelete);

  String deletedData = await NetworkService.getData(apiEndpoint);
  print('data $deletedData deleted');
  
}

