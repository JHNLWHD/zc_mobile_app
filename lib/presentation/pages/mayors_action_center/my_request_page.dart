import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:zc_mobile_app/presentation/blocs/mayors_action_center/my_request/my_request.dart';
import 'package:zc_mobile_app/presentation/widgets/mayors_action_center/my_request/my_request_form.dart';

class MyRequestPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text('My Request'.toUpperCase()),
        centerTitle: true,
        gradient: LinearGradient(colors: [Colors.blue, Colors.purpleAccent]),
      ),
      body: BlocProvider<MyRequestBloc>(
        builder: (context) => MyRequestBloc(),
        child: Container(
          child: MyRequestForm(),
        ),
      ),
    );
  }
}
