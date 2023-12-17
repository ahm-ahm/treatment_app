import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:treatment_app/commons/widgets/app_text.dart';
import 'package:treatment_app/commons/widgets/custom_button.dart';
import 'package:treatment_app/commons/widgets/form_widgets/name_input_from_field.dart';
import 'package:treatment_app/commons/widgets/form_widgets/password_input_from_field.dart';
import 'package:treatment_app/commons/widgets/pop.dart';
import 'package:treatment_app/utils/resource/app_colors.dart';
import 'package:treatment_app/utils/resource/app_images.dart';

import '../../../../../../commons/widgets/form_widgets/dob_input_from_field.dart';
import '../../../../../../commons/widgets/form_widgets/full_name_input_from_field.dart';
import '../../../../../../commons/widgets/form_widgets/phone_number_input_from_field.dart';
import '../../../../../../commons/widgets/form_widgets/relation_drop_down_field.dart';

class AddFamilyMemberView extends StatefulWidget {
  const AddFamilyMemberView({super.key});

  @override
  State<AddFamilyMemberView> createState() => _LoginViewState();
}

class _LoginViewState extends State<AddFamilyMemberView> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.white,
        leading: BackButton(
          onPressed: () => pop(context),
          color: AppColors.black,
        ),
        title: const AppText(
          text: 'Add Family Member',
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24.h),

              ///  [ Pick image]
              Center(
                child: Container(
                  height: 120.h,
                  width: 120.w,
                  // decoration: BoxDecoration(color: Colors.white),
                  child: Container(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 120.h,
                          width: 120.w,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.blue),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            margin: EdgeInsets.only(right: 30.0.r),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.camera_alt_outlined,
                                  size: 16.0,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              /// [Full Name field]
              FullNameInputFormField(controller: emailController),

              SizedBox(height: 16.h),

              /// [Relation field]
              RelationField(
                items: const ['Brother', 'Sister'],
                onValueChanged: (String? value) {},
              ),
              SizedBox(height: 16.h),

              /// [Phone Number field]
              PhoneNumberInputFormField(controller: passwordController),

              SizedBox(height: 16.h),

              /// [Phone Number field]
              DOBInputFormField(controller: passwordController),
              SizedBox(height: 16.h),
              AppText(text: 'Birth Gender'),

              SizedBox(height: 30.h),

              /// [login button]
              CustomButton(
                onTap: () {},
                btnName: 'Login',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
