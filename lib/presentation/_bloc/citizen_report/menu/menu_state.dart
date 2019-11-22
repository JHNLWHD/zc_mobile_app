import 'package:equatable/equatable.dart';

abstract class MenuState extends Equatable {
  const MenuState();

  @override
  List<Object> get props => [];
}

class MenuEmpty extends MenuState {}

class MenuLoading extends MenuState {}

class MenuLoaded extends MenuState {}

class MenuNotLoaded extends MenuState {}
