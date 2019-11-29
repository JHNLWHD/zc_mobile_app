import 'package:flutter/material.dart';
import 'package:zc_mobile_app/presentation/pages/peso_job_corner/view_job_page.dart';

class JobListTab extends StatelessWidget {

  JobListTab({this.aboutJob, this.contactJob, this.websiteJob});


  final String aboutJob;
  final String contactJob;
  final String websiteJob;


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          child: InkWell(
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return ViewJobPage();
                }),
              );
            },
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.info),
                      Text("Job Description: ", textDirection: TextDirection.ltr,),
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.contacts),
                      Text("Contact details: ", textDirection: TextDirection.ltr,),
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.web),
                      Text("Website", textDirection: TextDirection.ltr,),

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Card(
          child: InkWell(
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return ViewJobPage();
                }),
              );
            },
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.info),
                      Text("Job Description: ", textDirection: TextDirection.ltr,),
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.contacts),
                      Text("Contact details: ", textDirection: TextDirection.ltr,),
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.web),
                      Text("Website", textDirection: TextDirection.ltr,),

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Card(
          child: InkWell(
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return ViewJobPage();
                }),
              );
            },
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.info),
                      Text("Job Description: ", textDirection: TextDirection.ltr,),
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.contacts),
                      Text("Contact details: ", textDirection: TextDirection.ltr,),
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.web),
                      Text("Website", textDirection: TextDirection.ltr,),

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Card(
          child: InkWell(
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return ViewJobPage();
                }),
              );
            },
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.info),
                      Text("Job Description: ", textDirection: TextDirection.ltr,),
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.contacts),
                      Text("Contact details: ", textDirection: TextDirection.ltr,),
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.web),
                      Text("Website", textDirection: TextDirection.ltr,),

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}