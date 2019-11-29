import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:zc_mobile_app/presentation/blocs/peso_job_corner/peso_job_corner.dart';
import 'package:zc_mobile_app/presentation/widgets/common/carousel_image.dart';
import 'package:zc_mobile_app/presentation/widgets/peso_job_corner/peso_job_corner_form.dart';

class PesoJobCornerPage extends StatefulWidget {
  @override
  _PesoJobCornerPageState createState() => _PesoJobCornerPageState();
}

class _PesoJobCornerPageState extends State<PesoJobCornerPage> with TickerProviderStateMixin {
  TabController _tcontrol;

  void initState() {
    _tcontrol = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text('Peso Job Corner'.toUpperCase()),
        centerTitle: true,
        gradient: LinearGradient(colors: [Colors.blue, Colors.purpleAccent]),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(MediaQuery.of(context).size.height / 3.25,) ,
          child: Column(
            children: <Widget>[
              CarouselImages(
                image1: "assets/sample1.jpg",
                image2: "assets/sample2.jpg",
                image3: "assets/sample3.jpg",
              ),
              TabBar(
                indicatorColor: Colors.white,
                labelColor: Colors.purple,
                controller: _tcontrol,
                tabs: <Widget>[
                  Tab(child: Text("Job Openings".toUpperCase(), style: TextStyle(color: Colors.white),)),
                  Tab(child: Text("Saved Jobs".toUpperCase(),style: TextStyle(color: Colors.white),)),
                ],
              ),
            ],
          ),
        ),
      ),
      body: BlocProvider<PesoJobCornerBloc>(
        builder: (context) => PesoJobCornerBloc(),
        child: Container(
          child: PesoJobCornerForm(),
        ),
      ),
    );
  }
}

