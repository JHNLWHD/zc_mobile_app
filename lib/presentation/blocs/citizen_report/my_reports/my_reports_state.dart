import 'package:equatable/equatable.dart';

abstract class MyReportsState extends Equatable {
  const MyReportsState();

  @override
  List<Object> get props => [];
}

class MyReportsEmpty extends MyReportsState {}

class MyReportsLoading extends MyReportsState {}

class MyReportsLoaded extends MyReportsState {}

class MyReportsNotLoaded extends MyReportsState {}
