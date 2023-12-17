import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:treatment_app/commons/widgets/app_text.dart';
import 'package:treatment_app/commons/widgets/custom_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),
              IconButton(
                  padding: EdgeInsets.only(left: 16.0.r),
                  onPressed: () {},
                  splashRadius: 2.0.r,
                  icon: const Icon(Icons.list)),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.0.r,
                  bottom: 14.0.r,
                ),
                child: const AppText(
                  text: 'Hey, Emily!',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.0.r,
                  bottom: 10.0.r,
                ),
                child: AppText(
                  text: 'Wanna Book An Appointment?',
                  fontSize: 12.0.sp,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0.r),
                child: SizedBox(
                  height: 46.0,
                  child: CustomButton(
                    onTap: () {},
                    btnName: 'Book Appointment',
                    btnColor: Colors.pinkAccent,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
