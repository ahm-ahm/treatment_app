import 'package:flutter/cupertino.dart';
import 'package:treatment_app/commons/widgets/app_text.dart';

class NameInputFormField extends StatelessWidget {
  const NameInputFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppText(text: ""),
        SizedBox(height: 8),
      ],
    );
  }
}
