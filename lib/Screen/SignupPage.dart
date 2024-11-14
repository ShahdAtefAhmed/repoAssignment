import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '';
import '../Provider/ProviderUser.dart';
import '../Widget/CustomWidget.dart';
import 'LoginPage.dart';
class Signuppage extends StatelessWidget {
  var formkey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name= TextEditingController();
  TextEditingController phone= TextEditingController();


  Signuppage({super.key});
  @override

  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
      title:const Text('Signup'),
        centerTitle: true,
     ),
      body: Form(key: formkey,
        child: Column(
            children: [
            const  SizedBox(height: 20,),
              Center(
              child:Customwidget(
                    txtController: email, label:const Text('email'),
                  )
              ),
              SizedBox(height: 20,),
              Center(
                  child:Customwidget(
                    txtController: password, label: Text('password'),
                  )
              ),
              SizedBox(height: 20,),
              Center(
                  child:Customwidget(
                    txtController: name,label: Text('name',style: TextStyle(color: Colors.black87),),
                  ),
              ),
             const SizedBox(height: 20,),
                Center(
                  child:Customwidget(
                    txtController: phone,
                    label: Text('phone'),
                  ),

              ),
              SizedBox(height: 20,),
     Column(
       children: [
         MaterialButton(onPressed:() async
         {
           var Signup =Provider.of<Productuser>(context,listen: false);
           if(Signup==true) {
           await  Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginpage())
         );
         
           }
         }, child: Column(
           children: [
          Text('Signup')
           ],
         ),
         )
       ],
     )


            ],

        ),


      ),

    );
  }
}
