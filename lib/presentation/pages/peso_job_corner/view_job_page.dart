import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:zc_mobile_app/presentation/blocs/peso_job_corner/view_job/view_job.dart';
import 'package:zc_mobile_app/presentation/widgets/peso_job_corner/view_job_form.dart';

class ViewJobPage extends StatefulWidget {
  @override
  _ViewJobPageState createState() => _ViewJobPageState();
}

class _ViewJobPageState extends State<ViewJobPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text('Job Details'.toUpperCase()),
        centerTitle: true,
        gradient: LinearGradient(colors: [Colors.blue, Colors.purpleAccent]),
      ),
      body: BlocProvider<ViewJobBloc>(
        builder: (context) => ViewJobBloc(),
        child: Container(
          child: ViewJobForm(),
        ),
      ),
    );
  }
}

