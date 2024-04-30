import 'package:flutter/material.dart';
import 'package:multiprovider/Controllers/product_controller.dart';
import 'package:multiprovider/Models/product_model.dart';
import 'package:multiprovider/View/display_product.dart';
import 'package:provider/provider.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  TextEditingController productImageController = TextEditingController();
  TextEditingController productNameController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Product Addition",
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 20, 110, 180),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          TextField(
            controller: productImageController,
            decoration: const InputDecoration(label: Text("Prduct Image URL")),
          ),
          const SizedBox(
            height: 25,
          ),
          TextField(
            controller: productNameController,
            decoration: const InputDecoration(label: Text("Product Name")),
          ),
          const SizedBox(
            height: 25,
          ),
          TextField(
            controller: priceController,
            decoration: const InputDecoration(label: Text("Product Price")),
          ),
          const SizedBox(
            height: 25,
          ),
          GestureDetector(
            onTap: () {
              if (productImageController.text.isNotEmpty &&
                  productNameController.text.isNotEmpty &&
                  priceController.text.isNotEmpty) {
                var tempObj = ProductModel(
                  isLiked: false,
                  price: int.parse(priceController.text.trim()),
                  productImage: productImageController.text.trim(),
                  productName: productNameController.text.trim(),
                  quantity: 0,
                );

                Provider.of<ProductController>(context, listen: false)
                    .addProductData(pObj: tempObj);

                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const DisplayProduct()));
              } else {
                const SnackBar(
                  content: Text("Cannot Proceed"),
                  backgroundColor: Colors.red,
                );
              }
            },
            child: Container(
              height: 60,
              width: 160,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 153, 0),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: const Center(
                child: Text(
                  "SUBMIT",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
