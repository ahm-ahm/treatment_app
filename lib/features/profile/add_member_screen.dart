import 'package:flutter/material.dart';
import 'package:treatment_app/commons/widgets/app_text.dart';
import 'package:treatment_app/commons/widgets/basic_text_field.dart';
import 'package:treatment_app/commons/widgets/pop.dart';

class AddMemberScreen extends StatelessWidget {
  const AddMemberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: BackButton(
          onPressed: () => pop(context),
        ),
        elevation: 0.0,
        title: const AppText(
          text: 'Add Family Member',
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20.0),
            Center(
              child: Container(
                padding: const EdgeInsets.only(right: 10.0, bottom: 4.0),
                height: 150,
                width: 150,
                decoration: const BoxDecoration(
                    color: Colors.red, shape: BoxShape.circle),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          color: Colors.black, shape: BoxShape.circle),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.camera_alt_outlined),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            const AppText(text: 'Full Name'),
            const SizedBox(height: 10.0),
            const CustomTextField(
              hintText: 'full Name',
            )
          ],
        ),
      ),
    );
  }
}
