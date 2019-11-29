import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class ViewJobEvent extends Equatable {
  const ViewJobEvent();

  @override
  List<Object> get props => [];
}
class LoadViewJobForm extends ViewJobEvent {}

