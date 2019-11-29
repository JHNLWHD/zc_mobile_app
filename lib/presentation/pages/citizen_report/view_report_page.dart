import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:zc_mobile_app/presentation/blocs/citizen_report/view_report/view_report.dart';
import 'package:zc_mobile_app/presentation/widgets/citizen_report/view_report/view_report_form.dart';

class ViewReportPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text('My Reports'.toUpperCase()),
        centerTitle: true,
        gradient: LinearGradient(colors: [Colors.blue, Colors.purpleAccent]),
      ),
      body: BlocProvider<ViewReportBloc>(
        builder: (context) => ViewReportBloc(),
        child: Container(
          child: ViewReportForm(),
        ),
      ),
    );
  }
}
