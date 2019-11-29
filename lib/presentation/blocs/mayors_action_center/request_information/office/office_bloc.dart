import 'dart:async';
import 'package:bloc/bloc.dart';

import 'office.dart';


class OfficeBloc extends Bloc<OfficeEvent, OfficeState> {

  @override
  OfficeState get initialState => OfficeEmpty();


  @override
  Stream<OfficeState> mapEventToState(OfficeEvent event) async* {
    if(event is LoadOfficeForm) {
      yield* _mapMenuWithLoadOfficeForm();
    }
  }

  Stream<OfficeState> _mapMenuWithLoadOfficeForm() async* {
    yield OfficeLoading();
    try {
      yield OfficeLoaded();
    } catch (_) {
      yield OfficeNotLoaded();
    }
  }


}
