import 'package:flutter/material.dart';

class registerForm extends StatelessWidget {
  const registerForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(child: Column(
      children: [
      TextFormField(),
      FilledButton.tonalIcon(
                onPressed:(){}, 
                icon: const Icon(Icons.save),
                label: const Text('guardar info')),

    ],));
  }
}