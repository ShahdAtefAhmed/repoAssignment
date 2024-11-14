import 'package:flutter/material.dart';

class Customwidget extends StatelessWidget {
  TextEditingController txtController = TextEditingController();
  var label;
  Customwidget({super.key,required this.label,required this.txtController});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
     controller: txtController,
   //   label:Text(label)t

    );
  }
}
