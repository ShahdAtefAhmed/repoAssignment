import 'package:dio/dio.dart';

import '../Model/UserModel.dart';
class Servicesuser
{
  static Dio dio= Dio();

  static Future Signupuser({required email,password,name,phone})async
  {
    var url= ('https://student.valuxapps.com/api/register');
   Response response= await dio.post(url,data: {
      'email':email,
      'password':password,
      'name':name,
      'phone':phone,
    });
    return Usermodel.fromjson(response.data);
  }
  static Future Lofinupuser({required email,password})async
  {
    var url= ('https://student.valuxapps.com/api/login');
    Response response= await dio.post(url,data: {
      'email':email,
      'password':password,
    });
    return Usermodel.fromjson(response.data);
  }
}