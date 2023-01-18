import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  void onClick() {
    print('press');
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constrains) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => print('press'),
            child: const Padding(
                padding: EdgeInsets.only(top: 15),
                child: Icon(Icons.menu, color: Colors.grey)),
          ),
          Container(
            height: 40,
            width: 268,
            margin: const EdgeInsets.only(top: 15),
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.grey,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: const TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.search),
                iconColor: Colors.grey,
                border: InputBorder.none,
                hintText: 'Search Product',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ],
      );
    });
  }
}
