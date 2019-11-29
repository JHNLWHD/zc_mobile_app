import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:zc_mobile_app/presentation/blocs/citizen_report/my_reports/my_reports.dart';
import 'package:zc_mobile_app/presentation/widgets/citizen_report/my_reports/my_reports_form.dart';

class MyReportsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text('My Reports'.toUpperCase()),
        centerTitle: true,
        gradient: LinearGradient(colors: [Colors.blue, Colors.purpleAccent]),
      ),
      body: BlocProvider<MyReportsBloc>(
        builder: (context) => MyReportsBloc(),
        child: Container(
          child: MyReportsForm(),
        ),
      ),
    );
  }
}
