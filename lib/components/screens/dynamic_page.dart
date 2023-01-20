import 'package:flutter/material.dart';
import '../ui/button.dart';

class DynamicPage extends StatelessWidget {
  const DynamicPage({required this.productDetails, super.key});

  final Map<String, dynamic> productDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            padding: const EdgeInsets.only(left: 30),
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Padding(
                padding: EdgeInsets.only(
                  right: 30,
                ),
                child:
                    Icon(Icons.favorite_outline_rounded, color: Colors.black),
              )
            ],
          )),
      body: LayoutBuilder(builder: (ctx, constrains) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image(
                    fit: BoxFit.fill,
                    width: constrains.maxWidth * 0.9,
                    height: constrains.maxHeight * 0.35,
                    image: NetworkImage(productDetails['thumbnail']),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 46),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productDetails['title'],
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            productDetails['category'],
                            style: const TextStyle(
                                fontSize: 14, color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 46),
                    child: Text(
                      '\$${productDetails['price'].toString()}',
                      style: const TextStyle(
                          color: Colors.purple,
                          fontSize: 24,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productDetails['brand'],
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Details",
                          style: TextStyle(
                            color: Colors.purple,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Divider(
                          height: 3,
                          thickness: 3,
                          color: Colors.purple,
                          indent: 4,
                          endIndent: 34 * 10,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      productDetails['description'],
                      style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: constrains.maxHeight * 0.15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [Button()],
              ),
            )
          ],
        );
      }),
    );
  }
}
