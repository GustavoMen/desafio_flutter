import 'package:flutter/material.dart';
import '../screens/dynamic_page.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({required this.productDetails, super.key});

  final Map<String, dynamic> productDetails;

  void _selectProduct(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) {
        return DynamicPage(
          productDetails: productDetails,
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, snapshot) => LayoutBuilder(builder: (ctx, constrains) {
        return InkWell(
          onTap: () => _selectProduct(context),
          child: Container(
            width: constrains.maxWidth,
            child: Padding(
              padding:
                  EdgeInsets.only(left: constrains.maxWidth * 0.05, top: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image(
                          fit: BoxFit.fill,
                          width: constrains.maxWidth * 0.8,
                          height: constrains.maxHeight * 0.5,
                          image: NetworkImage(productDetails['thumbnail']),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      top: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productDetails['title'].length > 19
                              ? productDetails['title'].substring(0, 19)
                              : productDetails['title'],
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            productDetails['category'],
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            '\$${productDetails['price'].toString()}',
                            style: const TextStyle(
                                color: Colors.purple,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
