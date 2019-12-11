import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'presentation/blocs/authentication/authentication.dart';
import 'presentation/pages/home/home_page.dart';
import 'package:zc_mobile_app/user_repository/user_repository.dart';
import 'presentation/pages/login/login_page.dart';
import 'presentation/pages/splash/splash.dart';
import 'presentation/simple_bloc_delegate.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  BlocSupervisor.delegate = SimpleBlocDelegate();
  final UserRepository userRepository = UserRepository();
  runApp(
    BlocProvider(
      builder:  (context) => AuthenticationBloc(userRepository: userRepository)
        ..add(AppStarted()),
      child: App(userRepository: userRepository),
    ),
  );
}

class App extends StatelessWidget {
  final UserRepository _userRepository;

  App({Key key, @required UserRepository userRepository})
      : assert(userRepository != null),
        _userRepository = userRepository,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state is AuthenticationUninitialized) {
            return SplashPage();
          }
          if (state is AuthenticationUnauthenticated) {
            return LoginPage(userRepository: _userRepository);
          }
          if (state is AuthenticationAuthenticated) {
            return HomePage(userInfo: state.userInfo);
          }
        },
      ),
    );
  }
}
