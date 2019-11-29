import 'package:equatable/equatable.dart';

abstract class ViewJobState extends Equatable {
  const ViewJobState();

  @override
  List<Object> get props => [];
}

class ViewJobEmpty extends ViewJobState {}

class ViewJobLoading extends ViewJobState {}

class ViewJobLoaded extends ViewJobState {}

class ViewJobNotLoaded extends ViewJobState {}
