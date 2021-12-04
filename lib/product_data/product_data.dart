import 'package:shopping_app/utils/constants/urls/images.dart';

import '../models/product.dart';

class ProductData {
  List<Product> _productList=[
    Product(0, "Refined Olive Oil", 25, 30,false, false, true, [oliveOil1, oliveOil3]),
    Product(1, "Natural Olive Oil", 15, 50,false, false, true, [oliveOil2, oliveOil4,oliveOil5]),
    Product(2, "Virgin Olive Oil", 55, 10,false, false, true, [oliveOil2, oliveOil4, oliveOil3, oliveOil5]),
    Product(3, "Virgin Olive Oil", 20, 10,false, false, true, [oliveOil2, oliveOil4, oliveOil3, oliveOil5]),
    Product(4, "Extra Virgin Olive Oil", 50, 20,false, false, true, [oliveOil3, oliveOil2, oliveOil1]),
    Product(5, "Pomace  Olive Oil", 45, 5,false, false, true, [oliveOil2, oliveOil3]),
  ];

  List<Product> get productList=>_productList;


}