import 'package:flutter/material.dart';
import 'package:treatment_app/commons/widgets/app_text.dart';
import 'package:treatment_app/utils/resource/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.onTap,
      required this.btnName,
      this.width,
      this.height,
      this.btnBoxBorder,
      this.btnColor,
      this.textStyle = const TextStyle(
        color: Colors.white,
        fontSize: 14.0,
      )});
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
        alignment: Alignment.center,
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: btnColor,
            border: btnBoxBorder,
            borderRadius: BorderRadius.circular(5)),
        child: AppText(
          text: btnName,
          color: Colors.white,
        ),
      ),
    );
  }
}
