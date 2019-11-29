import 'package:equatable/equatable.dart';

abstract class OfficeState extends Equatable {
  const OfficeState();

  @override
  List<Object> get props => [];
}

class OfficeEmpty extends OfficeState {}

class OfficeLoading extends OfficeState {}

class OfficeLoaded extends OfficeState {}

class OfficeNotLoaded extends OfficeState {}
