import 'package:equatable/equatable.dart';

abstract class ViewReportState extends Equatable {
  const ViewReportState();

  @override
  List<Object> get props => [];
}

class ViewReportEmpty extends ViewReportState {}

class ViewReportLoading extends ViewReportState {}

class ViewReportLoaded extends ViewReportState {}

class ViewReportNotLoaded extends ViewReportState {}
