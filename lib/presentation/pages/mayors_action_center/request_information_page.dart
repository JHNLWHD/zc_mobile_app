import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:zc_mobile_app/presentation/blocs/mayors_action_center/request_information/request_information_menu/request_information_menu.dart';
import 'package:zc_mobile_app/presentation/widgets/mayors_action_center/request_information/request_information_form.dart';

class RequestInformationPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text('Request Information'.toUpperCase()),
        centerTitle: true,
        gradient: LinearGradient(colors: [Colors.blue, Colors.purpleAccent]),
      ),
      body: BlocProvider<RequestInformationMenuBloc>(
        builder: (context) => RequestInformationMenuBloc(),
        child: Container(
          child: RequestInformationForm(),
        ),
      ),
    );
  }
}
