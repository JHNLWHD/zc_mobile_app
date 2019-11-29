import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:zc_mobile_app/presentation/widgets/common/carousel_image.dart';

import '../about_tab.dart';
import '../services_tab.dart';



class CMO extends StatefulWidget {
  @override
  _CMOState createState() => _CMOState();
}

class _CMOState extends State<CMO> with TickerProviderStateMixin {

  TabController _tcontrol;

  void initState() {
    _tcontrol = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          resizeToAvoidBottomPadding: false,
          backgroundColor: Colors.indigo[50],
          appBar: GradientAppBar(
            title: FittedBox(fit:BoxFit.fitWidth,
              child: Text('Office of the City Mayor')
            ),
            centerTitle: true,

            gradient: LinearGradient(colors: [Colors.blue, Colors.purple]),

            leading: Builder(
              builder: (BuildContext context1) {
                return IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  alignment: Alignment.centerLeft,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                );
              },
            ),

            bottom: PreferredSize(
              preferredSize: Size.fromHeight(MediaQuery.of(context).size.height / 3.25,) ,
              child: Column(
                children: <Widget>[
                  CarouselImages(
                    image1: "images/sample1.jpg",
                    image2: "images/sample2.jpg",
                    image3: "images/sample3.jpg",
                  ),
                  TabBar(
                    indicatorColor: Colors.white,
                    labelColor: Colors.purple,
                    controller: _tcontrol,
                    tabs: <Widget>[
                      Tab(child: Text("ABOUT", style: TextStyle(color: Colors.white),)),
                      Tab(child: Text("SERVICES",style: TextStyle(color: Colors.white),)),
                    ],
                  ),
                ],
              ),
            ),
          ),

          body: TabBarView(
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
          ),

        )
    );
  }
}



