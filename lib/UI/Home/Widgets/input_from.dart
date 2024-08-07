import 'package:flutter/material.dart';

class InputFrom extends StatelessWidget {
  final Function nameValidation;
  final Function phoneValidation;
  final GlobalKey formKey;
  final TextEditingController nameController;
  final TextEditingController phoneController;

  const InputFrom(this.nameValidation, this.phoneValidation, this.formKey,
      this.nameController, this.phoneController,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              validator: (value) => nameValidation(value ?? ""),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: const InputDecoration(
                  hintText: "Enter Your Name", suffixIcon: Icon(Icons.edit)),
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: phoneController,
              validator: (value) => phoneValidation(value ?? ""),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: const InputDecoration(
                  hintText: "Enter Your Phone Number",
                  suffixIcon: Icon(Icons.phone)),
            )
          ],
        ));
  }
}
