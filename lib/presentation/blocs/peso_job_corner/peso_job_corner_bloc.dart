import 'dart:async';
import 'package:bloc/bloc.dart';

import 'peso_job_corner.dart';


class PesoJobCornerBloc extends Bloc<PesoJobCornerEvent, PesoJobCornerState> {

  @override
  PesoJobCornerState get initialState => PesoJobCornerEmpty();


  @override
  Stream<PesoJobCornerState> mapEventToState(PesoJobCornerEvent event) async* {
    if(event is LoadPesoJobCornerForm) {
      yield* _mapMenuWithLoadPesoJobCornerForm();
    }
  }

  Stream<PesoJobCornerState> _mapMenuWithLoadPesoJobCornerForm() async* {
    yield PesoJobCornerLoading();
    try {
      yield PesoJobCornerLoaded();
    } catch (_) {
      yield PesoJobCornerNotLoaded();
    }
  }


}
