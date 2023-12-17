import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:treatment_app/utils/resource/app_colors.dart';

class BasicFormField extends StatelessWidget {
  const BasicFormField({
    super.key,
    this.labelText,
    this.isFormattedNumber = false,
    this.keyboardType,
    this.validator,
    this.hintText,
    this.obscureText = false,
    this.suffixIcon,
    this.focusNode,
    this.onSaved,
    this.onEditingComplete,
    this.controller,
    this.autofocus = false,
    this.enabled = true,
    this.onChanged,
    this.prefixIcon,
    this.onTap,
    this.minLine = 1,
    this.maxLines = 1,
    this.radius = 6,
    this.contentPadding,
    this.inputFormatters,
    this.fillColor = Colors.white,
    this.textInputAction = TextInputAction.next,
  });

  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? labelText;
  final String? hintText;
  final EdgeInsetsGeometry? contentPadding;
  final bool obscureText;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  final Color? fillColor;
  final TextInputAction textInputAction;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final List<TextInputFormatter>? inputFormatters;
  final void Function()? onEditingComplete;
  final VoidCallback? onTap;
  final void Function(String?)? onChanged;
  final TextEditingController? controller;
  final bool autofocus;
  final bool enabled;
  final int maxLines;
  final bool isFormattedNumber;
  final int minLine;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      onChanged: onChanged,
      autofocus: autofocus,
      enabled: enabled,
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      maxLines: maxLines,
      minLines: minLine,
      validator: validator,
      onSaved: onSaved,
      onEditingComplete: onEditingComplete,
      textInputAction: textInputAction,
      inputFormatters: inputFormatters,
      focusNode: focusNode,
      style: TextStyle(
        color: Colors.black,
        fontSize: 16.sp,
      ),
      cursorColor: Colors.black,
      cursorHeight: 20.h,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: hintText,
        hintStyle: TextStyle(
          color: AppColors.grey,
          fontSize: 16.sp,
        ),
        errorStyle: TextStyle(
          fontSize: 12.sp,
        ),
        errorMaxLines: 2,
        labelText: labelText,
        labelStyle: TextStyle(
          color: Colors.black,
          fontSize: 16.sp,
        ),
        filled: true,
        fillColor: fillColor,
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(radius.r),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(radius.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.grey),
          borderRadius: BorderRadius.circular(radius.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius.r),
          borderSide: const BorderSide(color: AppColors.grey),
        ),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
