import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:zc_mobile_app/presentation/blocs/mayors_action_center/create_request/create_request.dart';
import 'package:zc_mobile_app/presentation/widgets/mayors_action_center/create_request/create_request_form.dart';

class CreateRequestPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text('Create Request'.toUpperCase()),
        centerTitle: true,
        gradient: LinearGradient(colors: [Colors.blue, Colors.purpleAccent]),
      ),
      body: BlocProvider<CreateRequestBloc>(
        builder: (context) => CreateRequestBloc(),
        child: Container(
          child: CreateRequestForm(),
        ),
      ),
    );
  }
}
