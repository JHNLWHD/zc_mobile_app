import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class RequestInformationMenuEvent extends Equatable {
  const RequestInformationMenuEvent();

  @override
  List<Object> get props => [];
}
class LoadOfficeMenu extends RequestInformationMenuEvent {}

