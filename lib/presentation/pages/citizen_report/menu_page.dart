import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:zc_mobile_app/presentation/blocs/citizen_report/menu/menu.dart';
import 'package:zc_mobile_app/presentation/widgets/citizen_report/menu/menu_form.dart';

class CitizenReportMenuPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text('Citizen Report'.toUpperCase()),
        centerTitle: true,
        gradient: LinearGradient(colors: [Colors.blue, Colors.purpleAccent]),
      ),
      body: BlocProvider<MenuBloc>(
        builder: (context) => MenuBloc(),
        child: Container(
          child: MenuForm(),
        ),
      ),
    );
  }
}
