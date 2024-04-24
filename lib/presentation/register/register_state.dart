
part of 'register_cubit.dart';

enum FormStatus{invalid,valid,validating,posting}

class RegisterFormState extends Equatable {

  final FormStatus formStatus;
  final String unserName;
  final String email;
  final String password;
  const RegisterFormState(
    {
      this.formStatus =FormStatus.invalid,
      this.unserName = '',
      this.email='',
      this.password='',});

  RegisterFormState copyWith({
    FormStatus? formStatus,
    String? unserName,
    String? email,
    String? password,

  })=> 
    RegisterFormState(
      formStatus: formStatus?? this.formStatus,
      unserName: unserName?? this.unserName,
      email: email?? this.email,
      password: password?? this.password        )      ;

  @override
  List<Object> get props => [formStatus,unserName,email,
  password];
  
}


