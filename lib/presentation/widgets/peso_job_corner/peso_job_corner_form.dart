import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zc_mobile_app/presentation/blocs/peso_job_corner/peso_job_corner.dart';

import 'job_list_tab.dart';
import 'saved_jobs_tab.dart';


class PesoJobCornerForm extends StatefulWidget {
  State<PesoJobCornerForm> createState() => _PesoJobCornerFormState();
}

class _PesoJobCornerFormState extends State<PesoJobCornerForm> with TickerProviderStateMixin {
  PesoJobCornerBloc _MenuBloc;
  TabController _tcontrol;

  @override
  void initState() {
    super.initState();
    _MenuBloc = BlocProvider.of<PesoJobCornerBloc>(context);
    _tcontrol = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PesoJobCornerBloc, PesoJobCornerState>(
      listener: (context, state) {
        if (state is PesoJobCornerNotLoaded) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('PesoJobCorner Not Loaded'), Icon(Icons.error)],
                ),
                backgroundColor: Colors.red,
              ),
            );
        }
        if (state is PesoJobCornerLoading) {
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
        if (state is PesoJobCornerLoaded) {
          BlocProvider.of<PesoJobCornerBloc>(context).add(LoadPesoJobCornerForm());
        }
      },
      child: BlocBuilder<PesoJobCornerBloc, PesoJobCornerState>(
        builder: (context, state) {
          return TabBarView(
            children: <Widget>[
              JobListTab(
                aboutJob:"JobListaboutaboutaboutaboutaboutaboutaboutabout"
                    "aboutaboutaboutaboutaboutaboutaboutaboutaboutaboutabout"
                    "aboutaboutaboutaboutaboutaboutaboutaboutaboutaboutabout"
                    "aboutaboutaboutaboutaboutaboutaboutaboutaboutaboutabout"
                    "aboutaboutaboutaboutaboutaboutaboutaboutaboutaboutabout"
                    "aboutaboutaboutaboutaboutaboutaboutaboutaboutaboutabout"
                    "aboutaboutaboutaboutaboutaboutaboutaboutaboutaboutabout"
                    "aboutaboutaboutaboutaboutaboutaboutaboutaboutaboutabout"
                    "aboutaboutaboutaboutaboutaboutaboutaboutaboutaboutabout"
                    "aboutaboutaboutaboutaboutaboutaboutaboutaboutaboutabout",
                contactJob:"09545390663",
                websiteJob: "www.linkhere.com",
              ),
              SavedJobsTab(),
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
