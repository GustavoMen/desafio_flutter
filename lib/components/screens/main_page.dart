import 'dart:convert';
import '../ui/grid_products.dart';
import 'package:flutter/material.dart';
import '../ui/main_text.dart';
import '../ui/select_menu.dart';
import 'package:http/http.dart' as http;

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Map<String, dynamic>> _productList = [];
  bool _isLoaded = false;

  Future<void> _getProducts() async {
    final fetch = await http.get(Uri.parse(
        'https://dummyjson.com/products?limit=4&select=title,price,description,brand,category,thumbnail'));
    final responseJson = jsonDecode(fetch.body);
    final response = responseJson['products'];
    response.forEach((productData) {
      _productList.add(productData);
    });
    setState(() {
      _isLoaded = true;
    });
  }

  @override
  void initState() {
    _getProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const MainText(),
      const SelectMenu(),
      Visibility(
          replacement: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: CircularProgressIndicator(),
              ),
            ],
          ),
          visible: _isLoaded,
          child: Flexible(
              child: GridProducts(
            productList: _productList,
          )))
    ]);
  }
}
