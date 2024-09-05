part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent extends Equatable{
  List<Object> get props => [];
}

class SignUpRequested extends AuthEvent {
  final String email;
  final String password;
  SignUpRequested(this.email, this.password);
}