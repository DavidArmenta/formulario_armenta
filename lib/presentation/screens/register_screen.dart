import 'package:flutter/material.dart';
import 'package:formulario_armenta/presentation/widgets/registerForm.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuevo usuario'),
      ),
      body: const _RegisterView(),
    );
  }
}

class _RegisterView extends StatelessWidget {
  const _RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const FlutterLogo(size:500),//AQUI PONDRIAMOS EL QUERY DEL CONTEXT PARA EL TAMAÑO
              const RegisterForm(),
              const SizedBox(
                height: 20,
              ),
            const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}