import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.onTap,
    required this.text,
    this.width,
    this.height,
    this.border,
    this.filledColor = Colors.black,
    this.textStyle = const TextStyle(
      color: Colors.white,
      fontSize: 17,
    ),
    this.radius,
  });
  final VoidCallback onTap;
  final double? radius;
  final String text;
  final double? width;
  final double? height;
  final TextStyle? textStyle;
  final Color? filledColor;
  final BoxBorder? border;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: filledColor,
          border: border,
          borderRadius: BorderRadius.circular(radius ?? 10),
        ),
        child: Center(
          child: FittedBox(
            child: Text(
              text,
              style: textStyle,
            ),
          ),
        ),
      ),
    );
  }
}
