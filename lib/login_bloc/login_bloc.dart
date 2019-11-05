import 'dart:async';

import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:zc_mobile_app/authentication_bloc/authentication_bloc.dart';
import 'package:zc_mobile_app/authentication_bloc/authentication_event.dart';
import 'package:zc_mobile_app/login_bloc/login_event.dart';
import 'package:zc_mobile_app/login_bloc/login_state.dart';
import 'package:zc_mobile_app/user_repository/user_repository.dart';

import 'package:zc_mobile_app/authentication_bloc/authentication.dart';
import 'package:zc_mobile_app/login_bloc/login.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final UserRepository userRepository;
  final AuthenticationBloc authenticationBloc;

  LoginBloc({
    @required this.userRepository,
    @required this.authenticationBloc,
  })  : assert(userRepository != null),
        assert(authenticationBloc != null);

  LoginState get initialState => LoginInitial();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginButtonPressed) {
      yield LoginLoading();

      try {
        final token = await userRepository.authenticate(
          username: event.username,
          password: event.password,
        );

        authenticationBloc.add(LoggedIn(token: token));
        yield LoginInitial();
      } catch (error) {
        yield LoginFailure(error: error.toString());
      }
    }
  }
}
