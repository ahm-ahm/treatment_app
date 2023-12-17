import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.onTap,
      required this.btnName,
      this.width,
      this.height,
      this.btnBoxBorder,
      this.btnColor = Colors.black,
      this.textStyle = const TextStyle(color: Colors.white, fontSize: 17)});
  final Function() onTap;
  final String btnName;
  final double? width;
  final double? height;
  final TextStyle? textStyle;
  final Color? btnColor;
  final BoxBorder? btnBoxBorder;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(color: btnColor, border: btnBoxBorder, borderRadius: BorderRadius.circular(5)),
        child: Center(
            child: FittedBox(
              child: Text(
                btnName,
                style: textStyle,
              ),
            )),
      ),
    );
  }
}
