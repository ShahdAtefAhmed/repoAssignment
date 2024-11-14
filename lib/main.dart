import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Provider/ProviderProduct.dart';
import 'Provider/ProviderUser.dart';
import 'Screen/LoginPage.dart';
import 'Screen/LoginPage.dart';
import 'Screen/ProductsPage.dart';
import 'Screen/SignupPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:
          [
        ChangeNotifierProvider(create: (context)=>Productprovider()),
        ChangeNotifierProvider(create: (context)=>Productuser()),
          ],

    child: MaterialApp(
    home:  ProductPage(),
    ),
    );
  }
}

