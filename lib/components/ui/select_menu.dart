import 'package:flutter/material.dart';

class SelectMenu extends StatefulWidget {
  const SelectMenu({super.key});

  @override
  State<SelectMenu> createState() => _SelectMenuState();
}

class _SelectMenuState extends State<SelectMenu> {
  int _selectedOption = 1;

  void _onSelectMenu(int e) {
    setState(() {
      _selectedOption = e;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MenuItem(
          selectedOption: _selectedOption,
          tap: _onSelectMenu,
          text: "Apple",
          thisOption: 1,
        ),
        MenuItem(
          selectedOption: _selectedOption,
          tap: _onSelectMenu,
          text: "Samsung",
          thisOption: 2,
        ),
        MenuItem(
          selectedOption: _selectedOption,
          tap: _onSelectMenu,
          text: "Huawei",
          thisOption: 3,
        ),
        MenuItem(
          selectedOption: _selectedOption,
          tap: _onSelectMenu,
          text: "OPPO",
          thisOption: 4,
        ),
      ],
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem(
      {required this.selectedOption,
      required this.tap,
      required this.text,
      required this.thisOption,
      super.key});

  final int selectedOption;
  final String text;
  final void Function(int) tap;
  final int thisOption;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: InkWell(
        onTap: () => tap(thisOption),
        child: Container(
          decoration: selectedOption == thisOption
              ? const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 3, color: Colors.purple)))
              : const BoxDecoration(
                  border: null,
                ),
          child: Text(text,
              style: selectedOption == thisOption
                  ? const TextStyle(color: Colors.purple, fontSize: 16)
                  : const TextStyle(color: Colors.grey, fontSize: 16)),
        ),
      ),
    );
  }
}
