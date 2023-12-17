// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      this.hintText,
      this.controller,
      this.onTap,
      this.obscureText = false,
      this.enabled = true,
      this.onChanged,
      this.maxLines,
      this.maxLength,
      this.keyboardType,
      this.suffixIcon,
      this.validator,
      this.prefixIcon,
      this.textInputAction,
      this.filled,
      this.fillColor = Colors.white,
      this.hintStyle,
      this.isReadOnly,
      this.edgeInsets})
      : super(key: key);

  final String? hintText;
  final TextEditingController? controller;
  final bool obscureText;
  final bool enabled;
  final Function(String)? onChanged;
  final int? maxLines;
  final int? maxLength;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final FormFieldValidator<String>? validator;
  final Widget? prefixIcon;
  final TextInputAction? textInputAction;
  final bool? filled;
  final Color? fillColor;
  final TextStyle? hintStyle;
  final EdgeInsetsGeometry? edgeInsets;
  final bool? isReadOnly;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      validator: validator,
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      maxLines: maxLines,
      enabled: enabled,
      onChanged: onChanged,
      maxLength: maxLength,
      readOnly: isReadOnly ?? false,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        isDense: true,
        counterText: '',
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        label: Text(
          hintText ?? '',
          style: const TextStyle(
            fontSize: 13.0,
            color: AppColors.lightGrey,
          ),
        ),
        border: _border,
        hintText: hintText,
        hintStyle: hintStyle ??
            const TextStyle(
              fontSize: 13.0,
              color: AppColors.lightGrey,
            ),
        enabledBorder: _border,
        focusedBorder: _focusBorder,
        filled: filled,
        fillColor: fillColor,
      ),
    );
  }

  InputBorder get _focusBorder =>
      const OutlineInputBorder(borderSide: BorderSide(color: Colors.green));

  InputBorder get _border =>
      const OutlineInputBorder(borderSide: BorderSide(color: Colors.green));
}
