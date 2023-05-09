import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/product_controller.dart';
import '../home/prod_list_view.dart';


final ProductController controller = Get.put(ProductController());


class ProductListScreen extends StatelessWidget {
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Stack(
            children: [
              const Icon(Icons.shopping_cart),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 15,
                    minHeight: 15,
                  ),
                  child: Obx(() => Text(
                    controller.itemCount.value.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.center,
                  )),
                ),
              ),
            ],
          ),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: controller.navigateToCartScreen,
              ),
            );
          }
      ),
      appBar: AppBar(
        title: const Text("Item list"),
      ),
      body: const ProductListView(),
    );
  }
}