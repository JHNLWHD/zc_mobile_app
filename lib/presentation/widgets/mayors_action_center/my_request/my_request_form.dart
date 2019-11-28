import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zc_mobile_app/presentation/blocs/mayors_action_center/my_request/my_request.dart';
import 'package:zc_mobile_app/presentation/widgets/mayors_action_center/my_request/request_button.dart';

class MyRequestForm extends StatefulWidget {
  State<MyRequestForm> createState() => _MyRequestFormState();
}

class _MyRequestFormState extends State<MyRequestForm> {
  MyRequestBloc _MyRequestBloc;

  @override
  void initState() {
    super.initState();
    _MyRequestBloc = BlocProvider.of<MyRequestBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<MyRequestBloc, MyRequestState>(
      listener: (context, state) {
        if (state is MyRequestNotLoaded) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('My Request Not Loaded'), Icon(Icons.error)],
                ),
                backgroundColor: Colors.red,
              ),
            );
        }
        if (state is MyRequestLoading) {
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
        if (state is MyRequestLoaded) {
          BlocProvider.of<MyRequestBloc>(context).add(LoadMyRequest());
        }
      },
      child: BlocBuilder<MyRequestBloc, MyRequestState>(
        builder: (context, state) {
          return ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 5.0),
                child: RequestButton(
                    requestType: "Document Request",
                    requestDescription: "Request document for bidding.",
                    pageRoute: "sdsd"
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: RequestButton(
                    requestType: "Document Request",
                    requestDescription: "Request document for bidding.",
                    pageRoute: "sdsd"
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: RequestButton(
                    requestType: "Document Request",
                    requestDescription: "Request document for bidding.",
                    pageRoute: "sdsd"
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: RequestButton(
                    requestType: "Document Request",
                    requestDescription: "Request document for bidding.",
                    pageRoute: "sdsd"
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: RequestButton(
                    requestType: "Document Request",
                    requestDescription: "Request document for bidding.",
                    pageRoute: "sdsd"
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: RequestButton(
                    requestType: "Document Request",
                    requestDescription: "Request document for bidding.",
                    pageRoute: "sdsd"
                ),
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
