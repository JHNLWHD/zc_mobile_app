import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:zc_mobile_app/presentation/blocs/mayors_action_center/request_information/request_information_menu/request_information_menu.dart';


class RequestInformationMenuBloc extends Bloc<RequestInformationMenuEvent, RequestInformationMenuState> {

  @override
  RequestInformationMenuState get initialState => OfficeEmpty();


  @override
  Stream<RequestInformationMenuState> mapEventToState(RequestInformationMenuEvent event) async* {
    if(event is LoadOfficeMenu) {
      yield* _mapMenuWithLoadOfficeMenu();
    }
  }

  Stream<RequestInformationMenuState> _mapMenuWithLoadOfficeMenu() async* {
    yield OfficeLoading();
    try {
      yield OfficeLoaded();
    } catch (_) {
      yield OfficeNotLoaded();
    }
  }


}
