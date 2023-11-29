class Product {
  late String id;
  late String name;
  late String title;
  late double price;
  late String image;  

  Product(this.id, this.name, this.title, this.price, this.image);

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    title = json['title'];
    price = json['price'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'title': title,
      'price': price,
      'image': image,
    };
  }

  
}

