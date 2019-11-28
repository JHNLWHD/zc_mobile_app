import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:zc_mobile_app/presentation/blocs/mayors_action_center/menu/menu.dart';
import 'package:zc_mobile_app/presentation/widgets/mayors_action_center/menu/menu_form.dart';

class MayorsActionCenterMenuPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text('Mayor\'s Action Center'.toUpperCase()),
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
