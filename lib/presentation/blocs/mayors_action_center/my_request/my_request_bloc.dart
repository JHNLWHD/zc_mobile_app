import 'dart:async';
import 'package:bloc/bloc.dart';
import 'my_request_event.dart';
import 'my_request_state.dart';

class MyRequestBloc extends Bloc<MyRequestEvent, MyRequestState> {

  @override
  MyRequestState get initialState => MyRequestEmpty();


  @override
  Stream<MyRequestState> mapEventToState(MyRequestEvent event) async* {
    if(event is LoadMyRequest) {
      yield* _mapMenuWithLoadRequest();
    }
  }

  Stream<MyRequestState> _mapMenuWithLoadRequest() async* {
    yield MyRequestEmpty();
    try {
      yield MyRequestLoading();
    } catch (_) {
      yield MyRequestNotLoaded();
    }
  }


}
