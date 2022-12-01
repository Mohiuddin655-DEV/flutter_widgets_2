import 'package:flutter/material.dart';

class DropDownView extends StatefulWidget {
  final List<String> items;
  final Function(String) onChanged;

  const DropDownView({
    Key? key,
    required this.items,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<DropDownView> createState() => _DropDownViewState();
}

class _DropDownViewState extends State<DropDownView> {
  late List<String> items = widget.items;
  late String _value = items.isNotEmpty ? items[0] : '';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _value,
      onChanged: (String? newValue) {
        setState(() {
          _value = newValue!;
          widget.onChanged.call(_value);
        });
      },
      items: items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
