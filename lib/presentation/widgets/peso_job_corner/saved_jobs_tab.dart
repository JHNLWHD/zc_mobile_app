import 'package:flutter/material.dart';

class SavedJobsTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[
              Card(
                child: InkWell(
                  onTap: (){
                    //Navigator.pushNamed(context, "offices/view_page");
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
                    //Navigator.pushNamed(context, "offices/view_page");
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
                    //Navigator.pushNamed(context, "offices/view_page");
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
                    //Navigator.pushNamed(context, "offices/view_page");
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
          ),
        )
    );
  }
}