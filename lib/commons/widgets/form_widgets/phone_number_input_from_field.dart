import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:treatment_app/commons/widgets/app_text.dart';
import 'package:treatment_app/commons/widgets/basic_text_field.dart';

class PhoneNumberInputFormField extends StatelessWidget {
  const PhoneNumberInputFormField({
    required this.controller,
    super.key,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// [Text]
        const AppText(text: 'Phone Number'),
        SizedBox(height: 8.h),

        /// [Form field]
        BasicFormField(
          controller: controller,
          hintText: 'Enter Phone Number',
        )
      ],
    );
  }
}
