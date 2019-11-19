import 'package:equatable/equatable.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object> get props => [];
}

class AuthenticationUninitialized extends AuthenticationState {}

class AuthenticationAuthenticated extends AuthenticationState {
  final List<String> userInfo;

  const AuthenticationAuthenticated(this.userInfo);

  @override
  List<Object> get props => [userInfo];

  @override
  String toString() => 'Authenticated { user information: $userInfo }';
}

class AuthenticationUnauthenticated extends AuthenticationState {}

class AuthenticationLoading extends AuthenticationState {}
