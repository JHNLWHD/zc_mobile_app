import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class MyReportsEvent extends Equatable {
  const MyReportsEvent();

  @override
  List<Object> get props => [];
}
class LoadMyReports extends MyReportsEvent {}

