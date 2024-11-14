import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shahdatefahmed/Screen/ProductsPage.dart';
import '';
import '../Provider/ProviderUser.dart';
import '../Widget/CustomWidget.dart';
import 'ProductsPage.dart';
class Loginpage extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  var formkey = GlobalKey<FormState>();

  Loginpage({super.key,});
  @override

  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        title: Text('Login'),
        centerTitle: true,
      ),
      body: Form(key: formkey,
        child: Column(
          children: [
           // CircleAvatar(
            //  child: Image(image:Image.network('image.png');
           //   ),
           // )
            const  SizedBox(height: 20,),
            Center(
                child:Customwidget(
                  txtController: email, label: null,
                )
            ),
            const  SizedBox(height: 20,),
            Center(
                child:Customwidget(
                  txtController: password, label: null,

                )
            ),
            const  SizedBox(height: 20,),
            Column(
              children: [
                MaterialButton(onPressed:() async
                {
                  var lodin =Provider.of<Productuser>(context,listen: false);
                  if(lodin.lodin==true) {
                    await  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPage())
                    );
                  }
                }, child: Column(
                  children: [
                    Text('Login')
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
