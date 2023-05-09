import 'package:get/get.dart';

class Product {
  String name;
  String price;
  String color;
  int count;
  String image;

  Product(this.name, this.price, this.color, this.count, this.image);
}

List<Product> productList = [
  Product('item1', "100\$", 'red', 0,'lib/images/main1.png'),
  Product('item2', "200\$", 'blue', 0,'lib/images/main2.png'),
  Product('item3', "300\$", 'green', 0,'lib/images/main2.png'),
  Product('item4', "400\$", 'yellow', 0,'lib/images/main4.jpg'),

];