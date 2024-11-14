import 'package:flutter/cupertino.dart';

import '../Model/ProductModel.dart';
import '../Services/ServicesProduct.dart';

class Productprovider extends ChangeNotifier
{
  Productmodel? objProduct;

  Future GetProduct()async
  {

        await Servicesproduct.GetAllProducts();

    notifyListeners();
  }
}