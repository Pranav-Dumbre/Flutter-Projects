import 'package:flutter/material.dart';
import 'package:multiprovider/Controllers/product_controller.dart';
import 'package:multiprovider/View/add_product.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProductController>(
      create: (context) {
        return ProductController();
      },
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AddProduct(),
      ),
    );
  }
}