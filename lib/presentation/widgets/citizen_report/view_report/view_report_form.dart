import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zc_mobile_app/presentation/blocs/citizen_report/view_report/view_report.dart';

class ViewReportForm extends StatefulWidget {
  State<ViewReportForm> createState() => _ViewReportFormState();
}

class _ViewReportFormState extends State<ViewReportForm> {
  ViewReportBloc _ViewReportBloc;

  @override
  void initState() {
    super.initState();
    _ViewReportBloc = BlocProvider.of<ViewReportBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ViewReportBloc, ViewReportState>(
      listener: (context, state) {
        if (state is ViewReportNotLoaded) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('View Report Not Loaded'), Icon(Icons.error)],
                ),
                backgroundColor: Colors.red,
              ),
            );
        }
        if (state is ViewReportLoading) {
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
        if (state is ViewReportLoaded) {
          BlocProvider.of<ViewReportBloc>(context).add(LoadViewReport());
        }
      },
      child: BlocBuilder<ViewReportBloc, ViewReportState>(
        builder: (context, state) {
          return Column(
            children: <Widget>[
              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black12,
                    ),
                    margin: EdgeInsets.all(5.0),
                    width: double.infinity,
                    height: 300,
                    padding: EdgeInsets.all(10),
                    child: Container(
                      child: Image(
                        image: AssetImage('assets/accident.jpg'),
                        fit: BoxFit.cover,
                      ),
                    )
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12,
                  ),
                  margin: EdgeInsets.all(5.0),
                  width: double.infinity,
                  height: 200,
                  padding: EdgeInsets.all(10),
                  child: Container(
                    child: Text('Lorem ipsum keme keme keme 48 years bakit sa balaj sangkatuts shonget at pamin sa shonget shonget shala at ang katol at nang daki bella boyband kirara bakit at bakit matod ng at bakit at bakit shonget quality control bakit majonders at ang at ang lorem ipsum keme keme jowabella otoko at bakit , majonders ng na ang ano sa at bakit shonga-shonga jutay emena gushung juts dites Cholo chuckie valaj chopopo conalei ang borta at nang ang sa bokot guash ng tamalis waz ang sudems kabog boyband at nang sa pranella majonders pamin shonget kabog effem at ang ng bakit kasi buya krung-krung bokot ang jupang-pang sa krang-krang at jowabelles doonek kirara jowabelles cheapangga biway katagalugan tungril jutay ganders at nang lulu majubis sa daki.'),
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
