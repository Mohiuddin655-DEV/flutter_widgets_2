import 'dart:io';

import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String imageAsset, imageUrl;
  final File? imageFile;
  final double width, height;
  final bool isCircular;
  final BorderRadiusGeometry? borderRadius;
  final Color? backgroundColor, borderColor;
  final double borderSize;
  final Function()? onPress;

  const Avatar({
    Key? key,
    required this.imageFile,
    this.width = 100,
    this.height = 100,
    this.isCircular = true,
    this.borderRadius,
    this.backgroundColor,
    this.borderColor,
    this.borderSize = 0,
    this.imageAsset = '',
    this.imageUrl = '',
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        clipBehavior: Clip.antiAlias,
        padding: EdgeInsets.all(borderSize),
        decoration: BoxDecoration(
          color: borderColor,
          shape: isCircular ? BoxShape.circle : BoxShape.rectangle,
          borderRadius: !isCircular ? borderRadius : null,
        ),
        child: Container(
          width: width,
          height: height,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: backgroundColor,
            shape: isCircular ? BoxShape.circle : BoxShape.rectangle,
            borderRadius: !isCircular ? borderRadius : null,
          ),
          child: _loadImage(),
        ),
      ),
    );
  }

  Widget _loadImage() {
    if (imageUrl.isNotEmpty) {
      return Image.network(
        imageUrl,
        fit: BoxFit.cover,
      );
    } else if (imageFile != null) {
      return Image.file(
        imageFile!,
        fit: BoxFit.cover,
      );
    } else {
      return Image.asset(
        imageAsset,
        fit: BoxFit.cover,
      );
    }
  }
}
