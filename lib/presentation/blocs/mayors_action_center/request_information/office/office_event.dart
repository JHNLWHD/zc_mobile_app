import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class OfficeEvent extends Equatable {
  const OfficeEvent();

  @override
  List<Object> get props => [];
}
class LoadOfficeForm extends OfficeEvent {}

