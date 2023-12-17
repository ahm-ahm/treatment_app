import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:treatment_app/commons/widgets/app_text.dart';
import 'package:treatment_app/commons/widgets/basic_text_field.dart';
import 'package:treatment_app/commons/widgets/custom_drop_down_button.dart';

class RelationField extends StatelessWidget {
  final Function(String?) onValueChanged;
  final List<String> items;
  const RelationField({
    required this.onValueChanged,
    required this.items,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// [Text]
        const AppText(text: 'Relation'),
        SizedBox(height: 8.h),

        /// [Form field]
        CustomDropDownButton(
            padding: 0.0,
            items: items,
            hintText: "Select Relation",
            onValueChanged: onValueChanged)
      ],
    );
  }
}
