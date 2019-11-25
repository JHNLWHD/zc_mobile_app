import 'package:equatable/equatable.dart';

abstract class RequestInformationMenuState extends Equatable {
  const RequestInformationMenuState();

  @override
  List<Object> get props => [];
}

class OfficeEmpty extends RequestInformationMenuState {}

class OfficeLoading extends RequestInformationMenuState {}

class OfficeLoaded extends RequestInformationMenuState {}

class OfficeNotLoaded extends RequestInformationMenuState {}
