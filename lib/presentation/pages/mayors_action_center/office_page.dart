import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:zc_mobile_app/presentation/blocs/mayors_action_center/request_information/office/office.dart';
import 'package:zc_mobile_app/presentation/widgets/common/carousel_image.dart';
import 'package:zc_mobile_app/presentation/widgets/mayors_action_center/request_information/office_form.dart';

class OfficePage extends StatefulWidget {
  @override
  _OfficePageState createState() => _OfficePageState();
}

class _OfficePageState extends State<OfficePage> with TickerProviderStateMixin {
  TabController _tcontrol;

  void initState() {
    _tcontrol = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text('SAMPLE OFFICE'.toUpperCase()),
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
                  Tab(child: Text("About".toUpperCase(), style: TextStyle(color: Colors.white),)),
                  Tab(child: Text("Services".toUpperCase(),style: TextStyle(color: Colors.white),)),
                ],
              ),
            ],
          ),
        ),
      ),
      body: BlocProvider<OfficeBloc>(
        builder: (context) => OfficeBloc(),
        child: Container(
          child: OfficeForm(),
        ),
      ),
    );
  }
}

