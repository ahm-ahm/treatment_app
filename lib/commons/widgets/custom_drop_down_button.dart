import 'package:flutter/material.dart';
import 'package:treatment_app/utils/resource/app_colors.dart';
import 'app_text.dart';

class CustomDropDownButton extends StatelessWidget {
  final String? value;
  final List<String> items;
  final String hintText;
  final String? labelText;
  final double? padding;
  final Color? fillColor;
  final String? Function(String?)? validator;

  final void Function(String?) onValueChanged;

  const CustomDropDownButton({
    super.key,
    this.validator,
    this.value,
    required this.items,
    this.padding,
    this.fillColor,
    required this.hintText,
    this.labelText,
    required this.onValueChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding ?? 10.0),
      child: DropdownButtonFormField<String>(
        isDense: true,
        isExpanded: true,
        validator: validator,
        value: value,
        items: items.map((String item) {
          return DropdownMenuItem<String>(
            value: item,
            child: AppText(
              text: item,
              textOverflow: TextOverflow.ellipsis,
              fontSize: 13.0,
            ),
          );
        }).toList(),
        hint: AppText(
          text: hintText,
          textOverflow: TextOverflow.ellipsis,
          fontSize: 13.0,
          color: AppColors.lightGrey,
        ),
        onChanged: onValueChanged,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 3.0,
          ),
          label: AppText(
            text: labelText ?? '',
            textOverflow: TextOverflow.ellipsis,
            fontSize: 13.0,
            color: AppColors.lightGrey,
          ),
          labelStyle:
              const TextStyle(color: AppColors.lightGrey, fontSize: 13.0),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.lightGrey),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.lightGrey),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.lightGrey,
            ),
          ),
          // fillColor: fillColor ?? AppColors.white,
          // filled: true,
        ),
        // dropdownColor: fillColor ?? Colors.white,
      ),
    );
  }
}
