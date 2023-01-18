import 'package:desafio_flutter/components/ui/search.dart';
import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget with PreferredSizeWidget {
  const AppBarCustom({
    this.preferredSize = const Size.fromHeight(65),
    super.key,
  });

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: const Search(),
    );
  }
}
