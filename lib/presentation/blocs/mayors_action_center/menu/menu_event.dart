import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class MenuEvent extends Equatable {
  const MenuEvent();

  @override
  List<Object> get props => [];
}
class LoadMenu extends MenuEvent {}

class CreateRequestPressed extends MenuEvent {}

class RequestInformationPressed extends MenuEvent {}

class MyRequestPressed extends MenuEvent {}

