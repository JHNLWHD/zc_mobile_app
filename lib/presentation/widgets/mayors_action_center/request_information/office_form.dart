import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zc_mobile_app/presentation/blocs/mayors_action_center/request_information/office/office.dart';
import 'about_tab.dart';
import 'services_tab.dart';

class OfficeForm extends StatefulWidget {
  State<OfficeForm> createState() => _OfficeFormState();
}

class _OfficeFormState extends State<OfficeForm> with TickerProviderStateMixin {
  OfficeBloc _MenuBloc;
  TabController _tcontrol;

  @override
  void initState() {
    super.initState();
    _MenuBloc = BlocProvider.of<OfficeBloc>(context);
    _tcontrol = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<OfficeBloc, OfficeState>(
      listener: (context, state) {
        if (state is OfficeNotLoaded) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Office Not Loaded'), Icon(Icons.error)],
                ),
                backgroundColor: Colors.red,
              ),
            );
        }
        if (state is OfficeLoading) {
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
        if (state is OfficeLoaded) {
          BlocProvider.of<OfficeBloc>(context).add(LoadOfficeForm());
        }
      },
      child: BlocBuilder<OfficeBloc, OfficeState>(
        builder: (context, state) {
          return TabBarView(
            children: <Widget>[
              AboutTab(
                aboutOffice:"Aboutaboutaboutaboutaboutaboutaboutaboutabout"
                    "aboutaboutaboutaboutaboutaboutaboutaboutaboutaboutabout"
                    "aboutaboutaboutaboutaboutaboutaboutaboutaboutaboutabout"
                    "aboutaboutaboutaboutaboutaboutaboutaboutaboutaboutabout"
                    "aboutaboutaboutaboutaboutaboutaboutaboutaboutaboutabout"
                    "aboutaboutaboutaboutaboutaboutaboutaboutaboutaboutabout"
                    "aboutaboutaboutaboutaboutaboutaboutaboutaboutaboutabout"
                    "aboutaboutaboutaboutaboutaboutaboutaboutaboutaboutabout"
                    "aboutaboutaboutaboutaboutaboutaboutaboutaboutaboutabout"
                    "aboutaboutaboutaboutaboutaboutaboutaboutaboutaboutabout",
                contactOffice:"09545390663",
                websiteOffice: "www.linkhere.com",
              ),
              ServicesTab(),
            ],
            controller: _tcontrol,
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
