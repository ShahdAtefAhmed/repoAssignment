import 'package:dio/dio.dart';

import '../Model/ProductModel.dart';

class Servicesproduct
{
  static Dio dio=Dio();
  static Future GetAllProducts()async
  {
    var url = ('https://student.valuxapps.com/api/home');
    Response response= await dio.get(url);
    return Productmodel.fromjson(response.data);
  }

}