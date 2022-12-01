import 'package:flutter/material.dart';

class ResponsiveNamingTextView extends StatelessWidget {
  final String name, value, separator;
  final Color nameColor, valueColor, separatorColor;
  final double nameSize, valueSize, separatorSize;
  final double? nameWidth, separatorWidth;
  final FontWeight? nameWeight, separatorWeight, valueWeight;

  const ResponsiveNamingTextView({
    Key? key,
    required this.name,
    required this.value,
    this.separator = ':',
    this.nameColor = Colors.black,
    this.valueColor = Colors.black,
    this.separatorColor = Colors.black,
    this.nameSize = 16,
    this.valueSize = 16,
    this.separatorSize = 16,
    this.nameWidth,
    this.separatorWidth,
    this.nameWeight,
    this.separatorWeight,
    this.valueWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final nameX = size.width * 0.25;
    final separatorX = size.width * 0.05;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        children: [
          SizedBox(
            width: nameWidth ?? nameX,
            child: Text(
              name,
              style: TextStyle(
                color: nameColor,
                fontSize: nameSize,
                fontWeight: nameWeight,
              ),
            ),
          ),
          SizedBox(
            width: separatorWidth ?? separatorX,
            child: Text(
              separator,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: separatorColor,
                fontSize: separatorSize,
                fontWeight: separatorWeight,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                color: valueColor,
                fontSize: valueSize,
                fontWeight: valueWeight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
