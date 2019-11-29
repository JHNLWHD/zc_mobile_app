import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class PesoJobCornerEvent extends Equatable {
  const PesoJobCornerEvent();

  @override
  List<Object> get props => [];
}
class LoadPesoJobCornerForm extends PesoJobCornerEvent {}

