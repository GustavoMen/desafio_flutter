import 'package:flutter/material.dart';

import './product_card.dart';

class GridProducts extends StatelessWidget {
  const GridProducts({required this.productList, super.key});

  final List<Map<String, dynamic>> productList;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(productList.length,
          (index) => ProductCard(productDetails: productList[index])),
    );
  }
}
