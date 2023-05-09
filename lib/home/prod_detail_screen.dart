import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  final String name;
  final String image;

  const ProductDetailScreen(this.name, this.image);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product detail"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image),
            const SizedBox(height: 20),
            Text(
              name,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView(
                children: const [
                  Text(
                    "This is product description.",
                    style: TextStyle(fontSize: 25),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}