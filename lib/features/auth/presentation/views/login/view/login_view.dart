import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:treatment_app/commons/widgets/app_text.dart';
import 'package:treatment_app/commons/widgets/custom_button.dart';
import 'package:treatment_app/commons/widgets/form_widgets/email_input_from_field.dart';
import 'package:treatment_app/commons/widgets/form_widgets/password_input_from_field.dart';
import 'package:treatment_app/utils/resource/app_colors.dart';
import 'package:treatment_app/utils/resource/app_images.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SizedBox(
          height: 1.sh,
          width: 1.sw,
          child: Column(
            children: [
              /// [image]
              Image.asset(AppImages.loginTopImagePNG),

              SizedBox(height: 24.h),

              /// [App logo]
              Image.asset(
                AppImages.appLogoPNG,
                height: 82.h,
                width: 146.w,
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40.h),

                    /// [Text]
                    AppText(
                      text: 'Login to your Account',
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w600,
                    ),

                    SizedBox(height: 40.h),

                    /// [Email field]
                    EmailInputFormField(controller: emailController),

                    SizedBox(height: 20.h),

                    /// [Password field]
                    PasswordInputFormField(controller: passwordController),

                    SizedBox(height: 10.h),

                    /// [Remember Me]
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            /// [check box]
                            const Icon(Icons.check_box_outline_blank),

                            SizedBox(height: 5.w),

                            /// [Text]
                            AppText(
                              text: 'Remember me',
                              color: AppColors.grey_6A6A6A,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),

                        /// [text]
                        AppText(
                          text: 'Forgot Password?',
                          fontSize: 10.sp,
                          color: AppColors.grey_6A6A6A,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),

                    SizedBox(height: 30.h),

                    /// [login button]
                    CustomButton(
                      filledColor: AppColors.pink_DF034D,
                      onTap: () {},
                      height: 56.h,
                      text: 'Login',
                    ),
                  ],
                ),
              ),

              const Spacer(),

              /// [text]
              Align(
                alignment: Alignment.bottomCenter,
                child: RichText(
                  text: const TextSpan(children: [
                    TextSpan(
                      text: 'Don’t have an account? ',
                      style: TextStyle(
                        color: AppColors.grey_6A6A6A,
                      ),
                    ),
                    TextSpan(
                        text: 'Register',
                        style: TextStyle(
                          color: AppColors.pink_DF034D,
                        ))
                  ]),
                ),
              ),
              SizedBox(height: 30.h)
            ],
          ),
        ),
      ),
    );
  }
}
