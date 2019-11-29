import 'package:meta/meta.dart';

@immutable
class CreateRequestState {
  final bool isRequestTypeValid;
  final bool isRequestDescriptionValid;
  final bool isSubmitting;
  final bool isSuccess;
  final bool isFailure;

  bool get isFormValid => isRequestTypeValid && isRequestDescriptionValid;

  CreateRequestState({
    @required this.isRequestTypeValid,
    @required this.isRequestDescriptionValid,
    @required this.isSubmitting,
    @required this.isSuccess,
    @required this.isFailure,
  });

  factory CreateRequestState.empty() {
    return CreateRequestState(
      isRequestTypeValid: true,
      isRequestDescriptionValid: true,
      isSubmitting: false,
      isSuccess: false,
      isFailure: false,
    );
  }

  factory CreateRequestState.loading() {
    return CreateRequestState(
      isRequestTypeValid: true,
      isRequestDescriptionValid: true,
      isSubmitting: true,
      isSuccess: false,
      isFailure: false,
    );
  }

  factory CreateRequestState.failure() {
    return CreateRequestState(
      isRequestTypeValid: true,
      isRequestDescriptionValid: true,
      isSubmitting: false,
      isSuccess: false,
      isFailure: true,
    );
  }

  factory CreateRequestState.success() {
    return CreateRequestState(
      isRequestTypeValid: true,
      isRequestDescriptionValid: true,
      isSubmitting: false,
      isSuccess: true,
      isFailure: false,
    );
  }

  CreateRequestState update({
    bool isRequestTypeValid,
    bool isRequestDescriptionValid,
  }) {
    return copyWith(
      isRequestTypeValid: isRequestTypeValid,
      isRequestDescriptionValid: isRequestDescriptionValid,
      isSubmitting: false,
      isSuccess: false,
      isFailure: false,
    );
  }

  CreateRequestState copyWith({
    bool isRequestTypeValid,
    bool isRequestDescriptionValid,
    bool isSubmitEnabled,
    bool isSubmitting,
    bool isSuccess,
    bool isFailure,
  }) {
    return CreateRequestState(
      isRequestTypeValid: isRequestTypeValid ?? this.isRequestTypeValid,
      isRequestDescriptionValid: isRequestDescriptionValid ?? this.isRequestDescriptionValid,
      isSubmitting: isSubmitting ?? this.isSubmitting,
      isSuccess: isSuccess ?? this.isSuccess,
      isFailure: isFailure ?? this.isFailure,
    );
  }

  @override
  String toString() {
    return '''CreateRequestState {
      isRequestTypeValid: $isRequestTypeValid,
      isRequestDescriptionValid: $isRequestDescriptionValid,
      isSubmitting: $isSubmitting,
      isSuccess: $isSuccess,
      isFailure: $isFailure,
    }''';
  }
}
