import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:treatment_app/commons/widgets/app_text.dart';
import 'package:treatment_app/commons/widgets/basic_text_field.dart';

class EmailInputFormField extends StatelessWidget {
  const EmailInputFormField({
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
        const AppText(text: 'Email'),
        SizedBox(height: 8.h),

        /// [Form field]
        SizedBox(
          child: BasicFormField(
            controller: controller,
            hintText: 'Enter email',
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
