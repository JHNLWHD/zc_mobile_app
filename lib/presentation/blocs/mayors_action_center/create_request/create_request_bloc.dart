import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';
import '../../../utils/validators.dart';

import 'create_request_event.dart';
import 'create_request_state.dart';

class CreateRequestBloc extends Bloc<CreateRequestEvent, CreateRequestState> {

  @override
  CreateRequestState get initialState => CreateRequestState.empty();

  @override
  Stream<CreateRequestState> transformEvents(
      Stream<CreateRequestEvent> events,
      Stream<CreateRequestState> Function(CreateRequestEvent event) next,
      ) {
    final observableStream = events as Observable<CreateRequestEvent>;
    final nonDebounceStream = observableStream.where((event) {
      return (event is! RequestTypeChanged && event is! RequestDescriptionChanged);
    });
    final debounceStream = observableStream.where((event) {
      return (event is RequestTypeChanged || event is RequestDescriptionChanged);
    }).debounceTime(Duration(milliseconds: 300));
    return super.transformEvents(nonDebounceStream.mergeWith([debounceStream]), next);
  }

  @override
  Stream<CreateRequestState> mapEventToState(
      CreateRequestEvent event,
      ) async* {
    if (event is RequestTypeChanged) {
      yield* _mapRequestTypeChangedToState(event.requestType);
    } else if (event is RequestDescriptionChanged) {
      yield* _mapRequestDescriptionChangedToState(event.requestDescription);
    } else if (event is Submitted) {
      yield* _mapFormSubmittedToState(event.requestType, event.requestDescription);
    }
  }

  Stream<CreateRequestState> _mapRequestTypeChangedToState(String email) async* {
    yield state.update(
      isRequestTypeValid: Validators.isValidRequestType(email),
    );
  }

  Stream<CreateRequestState> _mapRequestDescriptionChangedToState(String password) async* {
    yield state.update(
      isRequestDescriptionValid: Validators.isValidRequestDescription(password),
    );
  }

  Stream<CreateRequestState> _mapFormSubmittedToState(
      String email,
      String password,
      ) async* {
    yield CreateRequestState.loading();
    try {
      yield CreateRequestState.success();
    } catch (_) {
      yield CreateRequestState.failure();
    }
  }
}
