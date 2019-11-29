import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class CreateRequestEvent extends Equatable {
  const CreateRequestEvent();

  @override
  List<Object> get props => [];
}

class RequestTypeChanged extends CreateRequestEvent {
  final String requestType;

  const RequestTypeChanged({@required this.requestType});

  @override
  List<Object> get props => [requestType];

  @override
  String toString() => 'RequestTypeChanged { requestType :$requestType }';
}

class RequestDescriptionChanged extends CreateRequestEvent {
  final String requestDescription;

  const RequestDescriptionChanged({@required this.requestDescription});

  @override
  List<Object> get props => [requestDescription];

  @override
  String toString() => 'RequestDescriptionChangedChanged { requestDescription: $requestDescription }';
}

class Submitted extends CreateRequestEvent {
  final String requestType;
  final String requestDescription;

  const Submitted({
    @required this.requestType,
    @required this.requestDescription,
  });

  @override
  List<Object> get props => [requestType, requestDescription];

  @override
  String toString() {
    return 'Submitted { requestType: $requestType, requestDescription: $requestDescription }';
  }
}

class Success extends CreateRequestEvent {}
