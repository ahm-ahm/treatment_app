import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:treatment_app/commons/widgets/app_text.dart';
import 'package:treatment_app/commons/widgets/basic_text_field.dart';

class PasswordInputFormField extends StatelessWidget {
  const PasswordInputFormField({
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
        const AppText(text: 'Password'),
        SizedBox(height: 8.h),

        /// [Form field]
        SizedBox(
          child: BasicFormField(
            controller: controller,
            hintText: 'At least 8 characters',
            contentPadding: EdgeInsets.only(
              left: 12.w,
              right: 12.w,
              top: 17.h,
              bottom: 18.h,
            ),
          ),
        )
      ],
    );
  }
}
