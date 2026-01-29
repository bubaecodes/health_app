import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({
    super.key,
    required this.title,
    required this.fontVariation,
    required this.fontSize,
    this.color,
    this.textDecoration,
    this.overflow,
    this.maxLines,
    this.textAlign
  });

  final String title;
  final FontVariation fontVariation;
  final double fontSize;
  final Color? color;
  final TextDecoration? textDecoration;
  final TextOverflow? overflow;
  final int? maxLines;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      overflow: overflow,
      maxLines: maxLines,
      textAlign: textAlign,
      style: TextStyle(
        fontVariations: [fontVariation],
        color: color,
        fontSize: fontSize,
        fontFamily: "Quicksand",
        decoration: textDecoration,
      ),
    );
  }
}