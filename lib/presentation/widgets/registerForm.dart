import 'package:flutter/material.dart';
import 'package:formulario_armenta/presentation/widgets/input/custom_text_form_field.dart';
class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final GlobalKey<FormState> _fromkey = GlobalKey<FormState>();
  String userName = '';
  String email= '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _fromkey,
      child: 
      Column(
      children: [
        CustomTextFormfield(
        label: 'nombre del usuario',
        onChanged: (value)=> userName= value,
        validator: (value){
          if(value== null || value.isEmpty) {
          return'campo requerido ';
          }
          return null; 

        },
      ),
      const SizedBox(
        height: 20,
      ),
        CustomTextFormfield(
        label: 'correo electronico',
        onChanged: (value)=> email= value,
        validator: (value){
          if(value== null || value.trim().isEmpty){
          return'campo requerido ';}
          
          final emailRegExp = RegExp(
                r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
              );
          if(!emailRegExp.hasMatch(value)){return 'no tiene el formato requerido';}
          return null; 

        },
      ),
      const SizedBox(
        height: 20,
      ),
        CustomTextFormfield(
        label: 'contraseña',
        onChanged: (value)=> password= value,
        obscureText: true,
        validator: (value){
          if(value== null || value.trim().isEmpty)
          {
          return'campo requerido ';
          }
          final emailRegExp = RegExp(
                r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
              );
          if(!emailRegExp.hasMatch(value))
          {
            return 'no tiene el formato requerido';
          }
          return null; 
        },
      ),
      const SizedBox(
        height: 20,
      ),
      FilledButton.tonalIcon(
                onPressed:(){
                  final isValid = _fromkey.currentState!.validate();
                  print(isValid);
                  print(_fromkey.currentState!);
                  if(!isValid) return;
                  print('$userName,$password,$email');
                }, 
                icon: const Icon(Icons.save),
                label: const Text('Save Info')),
    ],));

  }
}