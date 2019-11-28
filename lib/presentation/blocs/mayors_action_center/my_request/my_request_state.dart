import 'package:equatable/equatable.dart';

abstract class MyRequestState extends Equatable {
  const MyRequestState();

  @override
  List<Object> get props => [];
}

class MyRequestEmpty extends MyRequestState {}

class MyRequestLoading extends MyRequestState {}

class MyRequestLoaded extends MyRequestState {}

class MyRequestNotLoaded extends MyRequestState {}
