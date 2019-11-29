import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zc_mobile_app/presentation/blocs/citizen_report/my_reports/my_reports.dart';
import 'package:zc_mobile_app/presentation/pages/citizen_report/view_report_page.dart';

import 'reports_button.dart';

class MyReportsForm extends StatefulWidget {
  State<MyReportsForm> createState() => _MyReportsFormState();
}

class _MyReportsFormState extends State<MyReportsForm> {
  MyReportsBloc _MyReportsBloc;

  @override
  void initState() {
    super.initState();
    _MyReportsBloc = BlocProvider.of<MyReportsBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<MyReportsBloc, MyReportsState>(
      listener: (context, state) {
        if (state is MyReportsNotLoaded) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('My Reports Not Loaded'), Icon(Icons.error)],
                ),
                backgroundColor: Colors.red,
              ),
            );
        }
        if (state is MyReportsLoading) {
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
        if (state is MyReportsLoaded) {
          BlocProvider.of<MyReportsBloc>(context).add(LoadMyReports());
        }
      },
      child: BlocBuilder<MyReportsBloc, MyReportsState>(
        builder: (context, state) {
          return ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 5.0),
                child: ReportsButton(
                    reportTitle: "Document Reports",
                    reportDescription: "Reports document for bidding.",
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return ViewReportPage();
                        }),
                      );
                    }
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: ReportsButton(
                    reportTitle: "Document Reports",
                    reportDescription: "Reports document for bidding.",
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return ViewReportPage();
                        }),
                      );
                    }
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: ReportsButton(
                    reportTitle: "Document Reports",
                    reportDescription: "Reports document for bidding.",
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return ViewReportPage();
                        }),
                      );
                    }
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: ReportsButton(
                    reportTitle: "Document Reports",
                    reportDescription: "Reports document for bidding.",
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return ViewReportPage();
                        }),
                      );
                    }
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: ReportsButton(
                    reportTitle: "Document Reports",
                    reportDescription: "Reports document for bidding.",
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return ViewReportPage();
                        }),
                      );
                    }
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: ReportsButton(
                    reportTitle: "Document Reports",
                    reportDescription: "Reports document for bidding.",
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return ViewReportPage();
                        }),
                      );
                    }
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
