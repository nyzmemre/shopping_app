class Product {
  int id;
  String name;
  double price;
  bool isAddBasket;
  bool isAddCart;
  bool isAvailable;
  List<String> imgURL;

  Product(this.id, this.name, this.price, this.isAddBasket, this.isAddCart,
      this.isAvailable, this.imgURL);

}
