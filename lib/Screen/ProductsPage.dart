
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/ProviderProduct.dart';
import 'DetailsPage.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: Consumer<Productprovider>(
        builder: (context, provider, child) {
          provider.GetProduct();

          if (provider.objProduct == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          var products = provider.objProduct!.products;

          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemCount: products.length,
            itemBuilder: (context, index) {
              var product = products[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailProductPage(
                        image: product['index']['image'],
                        title: product['index']['price'],
                        description: product['description'],
                      ),
                    ),
                  );
                },
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        product['image'],
                        height: 150,
                        width: double.infinity,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          product['title'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          product['description'],
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

// DetailProductPage (Screen)
