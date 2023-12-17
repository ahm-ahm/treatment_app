import 'package:flutter/material.dart';
import 'package:treatment_app/commons/widgets/app_text.dart';
import 'package:treatment_app/commons/widgets/custom_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  padding: const EdgeInsets.all(0.0),
                  onPressed: () {},
                  splashRadius: 10.0,
                  icon: const Icon(Icons.list)),
              const Padding(
                padding: EdgeInsets.only(
                  left: 10.0,
                  bottom: 14.0,
                ),
                child: AppText(
                  text: 'Hey, Emily!',
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 10.0,
                  bottom: 10.0,
                ),
                child: AppText(
                  text: 'Wanna Book An Appointment?',
                  fontSize: 12.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 46.0,
                  child:
                      CustomButton(onTap: () {}, btnName: 'Book Appointment'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
