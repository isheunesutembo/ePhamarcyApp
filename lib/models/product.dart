class Product{
  String productImage;
  String productName;

  double productPrice;
  bool? isAvailable;
  String productDescription;
  Product({
    required this.productImage,
    required this.productName,
    required this.productPrice,
    this.isAvailable,
    required this.productDescription
  });


  


}