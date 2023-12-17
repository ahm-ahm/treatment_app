import 'package:flutter/material.dart';

class CustomCheckBoxTile extends StatelessWidget {
  final bool? value;
  final Function(bool?) onChanged;
  const CustomCheckBoxTile(
      {super.key, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(value: value, onChanged: onChanged);
  }
}
