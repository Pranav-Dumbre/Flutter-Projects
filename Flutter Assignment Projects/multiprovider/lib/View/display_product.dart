import 'package:flutter/material.dart';
import 'package:multiprovider/Controllers/product_controller.dart';
import 'package:provider/provider.dart';

class DisplayProduct extends StatelessWidget {
  const DisplayProduct({super.key});

  @override
  Widget build(BuildContext context) {
    var providerObj = Provider.of<ProductController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Details",
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 255, 153, 0),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: Image.network(
                  "https://m.media-amazon.com/images/I/712TSdtX2rL.jpg",
                  //"${providerObj.productModelObj?.productImage}",
                  height: 300,
                  width: 300,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "${providerObj.productModelObj?.productName}",
                style: const TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "${providerObj.productModelObj?.price}",
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Consumer<ProductController>(
                    builder: (context, provider, child) {
                      return GestureDetector(
                        onTap: () {
                          providerObj.addFavourite();
                        },
                        child: Icon(
                          (providerObj.productModelObj!.isLiked!)
                              ? Icons.favorite_rounded
                              : Icons.favorite_outline_rounded,
                        ),
                      );
                    },
                  )
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      providerObj.addQuantity();
                    },
                    child: const Icon(Icons.add),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Consumer<ProductController>(
                      builder: ((context, provider, child) {
                    return Text("${providerObj.productModelObj?.quantity}");
                  })),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      providerObj.removeQuantity();
                    },
                    child: const Icon(Icons.remove),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
