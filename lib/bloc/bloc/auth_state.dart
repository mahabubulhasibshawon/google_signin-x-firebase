part of 'auth_bloc.dart';

@immutable
sealed class AuthState extends Equatable {}

final class AuthInitial extends AuthState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class Loading extends AuthState {
  @override
  // TODO: implement props
  List<Object?> get props => [];

}

class UnAuthenticated extends AuthState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}