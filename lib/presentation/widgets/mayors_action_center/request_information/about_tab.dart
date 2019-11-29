import 'package:flutter/material.dart';

class AboutTab extends StatelessWidget {

  AboutTab({this.aboutOffice, this.contactOffice, this.websiteOffice});


  final String aboutOffice;
  final String contactOffice;
  final String websiteOffice;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text("ABOUT"),
                    Divider(),
                    Expanded(
                      child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SingleChildScrollView(
                              child: Column(
                                children: <Widget>[
                                  Text(aboutOffice, style: TextStyle(fontSize: 20.0),),
                                ],
                              ),
                            ),
                          )
                      ),
                    ),
                    Divider(),
                    Row(children: <Widget>[
                      Icon(Icons.call),
                      Text(contactOffice)
                    ],
                    ),
                    Divider(),
                    Row(children: <Widget>[
                      Icon(Icons.language),
                      Text(websiteOffice)
                    ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}