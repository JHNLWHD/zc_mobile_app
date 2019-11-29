import 'dart:async';
import 'package:bloc/bloc.dart';
import 'my_reports_event.dart';
import 'my_reports_state.dart';

class MyReportsBloc extends Bloc<MyReportsEvent, MyReportsState> {

  @override
  MyReportsState get initialState => MyReportsEmpty();


  @override
  Stream<MyReportsState> mapEventToState(MyReportsEvent event) async* {
    if(event is LoadMyReports) {
      yield* _mapMenuWithLoadReports();
    }
  }

  Stream<MyReportsState> _mapMenuWithLoadReports() async* {
    yield MyReportsEmpty();
    try {
      yield MyReportsLoading();
    } catch (_) {
      yield MyReportsNotLoaded();
    }
  }


}
