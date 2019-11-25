import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zc_mobile_app/presentation/_bloc/mayors_action_center/menu/menu.dart';
import 'package:zc_mobile_app/presentation/pages/mayors_action_center/request_information_page.dart';
import 'package:zc_mobile_app/presentation/widgets/common/custom_button.dart';

class MenuForm extends StatefulWidget {
  State<MenuForm> createState() => _MenuFormState();
}

class _MenuFormState extends State<MenuForm> {
  MenuBloc _MenuBloc;

  @override
  void initState() {
    super.initState();
    _MenuBloc = BlocProvider.of<MenuBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<MenuBloc, MenuState>(
      listener: (context, state) {
        if (state is MenuNotLoaded) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Menu Not Loaded'), Icon(Icons.error)],
                ),
                backgroundColor: Colors.red,
              ),
            );
        }
        if (state is MenuLoading) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Loading ...'),
                    CircularProgressIndicator(),
                  ],
                ),
              ),
            );
        }
        if (state is MenuLoaded) {
          BlocProvider.of<MenuBloc>(context).add(LoadMenu());
        }
      },
      child: BlocBuilder<MenuBloc, MenuState>(
        builder: (context, state) {
          return Column(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Image.asset('assets/banner.jpg'),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 50.0 ,
                  child: CustomButton(
                    title: 'Request Information',
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return RequestInformationPage();
                        }),
                      );
                    },
                  ),
                )
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(20.0,0.0,20.0,10.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50.0 ,
                    child: CustomButton(
                      title: 'Create Request',
                      onPressed: () {

                      },
                    ),
                  )
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(20.0,10.0,20.0,10.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50.0 ,
                    child: CustomButton(
                      title: 'My Request',
                      onPressed: () {

                      },
                    ),
                  )
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
