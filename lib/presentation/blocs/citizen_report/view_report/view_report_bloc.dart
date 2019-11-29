import 'dart:async';
import 'package:bloc/bloc.dart';
import 'view_report_event.dart';
import 'view_report_state.dart';

class ViewReportBloc extends Bloc<ViewReportEvent, ViewReportState> {

  @override
  ViewReportState get initialState => ViewReportEmpty();


  @override
  Stream<ViewReportState> mapEventToState(ViewReportEvent event) async* {
    if(event is LoadViewReport) {
      yield* _mapMenuWithLoadReports();
    }
  }

  Stream<ViewReportState> _mapMenuWithLoadReports() async* {
    yield ViewReportEmpty();
    try {
      yield ViewReportLoading();
    } catch (_) {
      yield ViewReportNotLoaded();
    }
  }


}
