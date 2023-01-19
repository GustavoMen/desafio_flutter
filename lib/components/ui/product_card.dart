import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({required this.productDetails, super.key});

  final Map<String, dynamic> productDetails;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, snapshot) => Container(
        child: Column(
          children: [
            Image(
              image: NetworkImage(productDetails['thumbnail']),
            ),
            Text(productDetails['title']),
            Text(productDetails['category']),
            Text('R\$${productDetails['price'].toString()}')
          ],
        ),
      ),
    );
  }
}
