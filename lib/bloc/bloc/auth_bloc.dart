import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:google_signin/data/repositories/auth_repository.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  // AuthBloc() : super(AuthInitial()) {
  //   on<AuthEvent>((event, emit) {
  //     // TODO: implement event handler
  //   });
  final AuthRepository authRepository;
  AuthBloc({required this.authRepository}) : super(UnAuthenticated()){
    on<SignUpRequested>((event, state) async{
      emit(Loading());
      try{
        authRepository.signUp(email: event.email, password: event.password);
      }catch(e){
        emit(UnAuthenticated());
      }
    });
  }
}
