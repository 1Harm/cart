import 'package:app/models/product_model.dart';
import 'package:app/db/db.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  final products = <Product>[].obs;
  @override
  void onInit() {
    products.bindStream(FirestoreDB().getAllProducts());
    super.onInit();
  }
}