import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterFormState> {
  RegisterCubit() : super(const RegisterFormState());

void onSubmit(){
  print('Submit$state');
}
void unserNameChanged(String value){
emit(state.copyWith(unserName: value));
 print('Submit$state');
}
void emailChanged(String value){
emit(state.copyWith(email: value));
 print('Submit$state');
}
void passwordChanged(String value){
emit(state.copyWith(password:  value));
 print('Submit$state');
}

}
