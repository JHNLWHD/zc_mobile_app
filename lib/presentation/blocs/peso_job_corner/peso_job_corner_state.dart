import 'package:equatable/equatable.dart';

abstract class PesoJobCornerState extends Equatable {
  const PesoJobCornerState();

  @override
  List<Object> get props => [];
}

class PesoJobCornerEmpty extends PesoJobCornerState {}

class PesoJobCornerLoading extends PesoJobCornerState {}

class PesoJobCornerLoaded extends PesoJobCornerState {}

class PesoJobCornerNotLoaded extends PesoJobCornerState {}
