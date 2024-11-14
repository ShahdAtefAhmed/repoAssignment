import 'package:flutter/cupertino.dart';
import '../Services/ServicesUser.dart';
import '../Model/UserModel.dart';
class Productuser extends ChangeNotifier
{
  Usermodel? modelobj;
  Future signup({required email,password,name,phone})async
  {

        await Servicesuser.Signupuser(email: email,password: password,name: name,phone: phone);

    notifyListeners();
  }

  Future lodin({required email,password})async
  {
    if(modelobj?.status==201)
    {
      await Servicesuser.Signupuser(email: email,password: password);
    }
    notifyListeners();
  }
}