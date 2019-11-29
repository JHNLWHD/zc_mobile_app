import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:zc_mobile_app/presentation/blocs/peso_job_corner/view_job/view_job.dart';

class ViewJobBloc extends Bloc<ViewJobEvent, ViewJobState> {

  @override
  ViewJobState get initialState => ViewJobEmpty();


  @override
  Stream<ViewJobState> mapEventToState(ViewJobEvent event) async* {
    if(event is LoadViewJobForm) {
      yield* _mapMenuWithLoadViewJobForm();
    }
  }

  Stream<ViewJobState> _mapMenuWithLoadViewJobForm() async* {
    yield ViewJobLoading();
    try {
      yield ViewJobLoaded();
    } catch (_) {
      yield ViewJobNotLoaded();
    }
  }


}
