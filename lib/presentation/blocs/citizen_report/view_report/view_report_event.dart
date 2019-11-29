import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class ViewReportEvent extends Equatable {
  const ViewReportEvent();

  @override
  List<Object> get props => [];
}
class LoadViewReport extends ViewReportEvent {}

