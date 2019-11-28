import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:zc_mobile_app/presentation/blocs/citizen_report/menu/menu.dart';


class MenuBloc extends Bloc<MenuEvent, MenuState> {

  @override
  MenuState get initialState => MenuEmpty();


  @override
  Stream<MenuState> mapEventToState(MenuEvent event) async* {
    if(event is LoadMenu) {
      yield* _mapMenuWithLoadMenu();
    } else if (event is CreateRequestPressed) {
      yield* _mapMenuWithCreateRequestPressed();
    } else if (event is RequestInformationPressed) {
      yield* _mapMenuWithRequestInformationPressed();
    } else if (event is MyRequestPressed) {
      yield* _mapMenuWithMyRequestPressed();
    }
  }

  Stream<MenuState> _mapMenuWithLoadMenu() async* {
    yield MenuLoading();
    try {
      yield MenuLoaded();
    } catch (_) {
      yield MenuNotLoaded();
    }
  }

  Stream<MenuState> _mapMenuWithCreateRequestPressed() async* {
    yield MenuLoading();
    try {
      yield MenuLoaded();
    } catch (_) {
      yield MenuNotLoaded();
    }
  }

  Stream<MenuState> _mapMenuWithRequestInformationPressed() async* {
    yield MenuLoading();
    try {
      yield MenuLoaded();
    } catch (_) {
      yield MenuNotLoaded();
    }
  }

  Stream<MenuState> _mapMenuWithMyRequestPressed() async* {
    yield MenuLoading();
    try {
      yield MenuLoaded();
    } catch (_) {
      yield MenuNotLoaded();
    }
  }
}
