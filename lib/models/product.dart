class Product {
  int id;
  String name;
  int stock;
  double price;
  bool isAddBasket;
  bool isAddCart;
  bool isAvailable;
  List<String> imgURL;
  int numberOfSales;

  Product(this.id, this.name, this.stock, this.price, this.isAddBasket, this.isAddCart,
      this.isAvailable, this.imgURL, this.numberOfSales);

}
