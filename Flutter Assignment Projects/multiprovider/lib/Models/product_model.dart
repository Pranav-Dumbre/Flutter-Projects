

class ProductModel{
  String? productImage;
  String? productName;
  int? price;
  bool? isLiked = false;
  int? quantity = 0;

  ProductModel({
 this.productImage,
 this.productName,
 this.price,
 this.isLiked,
 this.quantity
  });
  
}
