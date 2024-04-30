import 'package:flutter/material.dart';
import 'package:multiprovider/Models/product_model.dart';

class ProductController with ChangeNotifier {
  ProductModel? productModelObj;
//Add Product Data
  void addProductData({required ProductModel pObj}) {
    productModelObj = pObj;
  }

//Add to Favourite
  void addFavourite() {
    productModelObj!.isLiked = !productModelObj!.isLiked!;
    notifyListeners();
  }

  //Add Quantity
  void addQuantity() {
    productModelObj!.quantity = productModelObj!.quantity! + 1;
    notifyListeners();
  }

  //Remove Quantity
  void removeQuantity() {
    productModelObj!.quantity = productModelObj!.quantity! - 1;
    notifyListeners();
  }
}
