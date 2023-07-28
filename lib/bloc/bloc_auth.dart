
import 'package:flutter_bloc/flutter_bloc.dart';

import '../auth_service/auth_service.dart';
import 'bloc_event.dart';
import 'bloc_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthService fireBaseService = AuthService();

  AuthBloc() : super(AuthStateInitial()) {
    on<RegisterEvent>(
          (event, emit) async {
        emit(AuthStateLoading());
        try {
          await fireBaseService.loginUser(event.email, event.password);
          emit(AuthStateLoaded());
        } catch (e) {
          emit(AuthStateError("Registration failed: $e"));
        }
      },
    );
  }
}