import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class MyRequestEvent extends Equatable {
  const MyRequestEvent();

  @override
  List<Object> get props => [];
}
class LoadMyRequest extends MyRequestEvent {}

