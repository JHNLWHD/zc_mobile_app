import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zc_mobile_app/presentation/blocs/peso_job_corner/view_job/view_job.dart';

class ViewJobForm extends StatefulWidget {
  State<ViewJobForm> createState() => _ViewJobFormState();
}

class _ViewJobFormState extends State<ViewJobForm> with TickerProviderStateMixin {
  ViewJobBloc _MenuBloc;

  @override
  void initState() {
    super.initState();
    _MenuBloc = BlocProvider.of<ViewJobBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ViewJobBloc, ViewJobState>(
      listener: (context, state) {
        if (state is ViewJobNotLoaded) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('ViewJob Not Loaded'), Icon(Icons.error)],
                ),
                backgroundColor: Colors.red,
              ),
            );
        }
        if (state is ViewJobLoading) {
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
        if (state is ViewJobLoaded) {
          BlocProvider.of<ViewJobBloc>(context).add(LoadViewJobForm());
        }
      },
      child: BlocBuilder<ViewJobBloc, ViewJobState>(
        builder: (context, state) {
          return Column(
            children: <Widget>[
              Container(
                child: Image.asset("assets/sample1.jpg"),
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                    Icon(
                      Icons.place, color: Colors.purple,
                    ),
                    Text(' Company Address Here')
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                    Icon(
                      Icons.contact_phone, color: Colors.purple,
                    ),
                    Text('  Company Contact Number Here')
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                    Icon(
                      Icons.mail, color: Colors.purple,
                    ),
                    Text('  Company Email Here')
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                    Icon(
                      Icons.business_center, color: Colors.purple,
                    ),
                    Text('  No. of Opening')
                  ],
                ),
              ),
              Divider(thickness: 5.0),
              Container(child: Text('Job Description')),
              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                      color: Colors.purple,
                      child: Text('SAVE', textAlign: TextAlign.center, textDirection: TextDirection.ltr, style: TextStyle(color: Colors.white,fontSize: 20.0),),
                      onPressed: (){
                        print('sapnu puas');
                      }
                  ),
                ),
              )
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
