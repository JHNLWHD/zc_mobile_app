import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:zc_mobile_app/authentication_bloc/authentication.dart';
import 'package:zc_mobile_app/authentication_bloc/authentication_bloc.dart';
import 'package:zc_mobile_app/authentication_bloc/authentication_event.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        child: Center(
            child: RaisedButton(
              child: Text('logout'),
              onPressed: () {
                BlocProvider.of<AuthenticationBloc>(context).add(LoggedOut());
              },
            )),
      ),
    );
  }
}
