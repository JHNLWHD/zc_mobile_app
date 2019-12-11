import 'dart:io';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ReportFeed extends StatelessWidget {


  int reportIndex;
  List<File> image;
  List<String> type;
  List<DateTime> date;
  List<String> details;
  List<String> time;
  List<String> location;

  @override

  Widget build(BuildContext context) {
    if (reportIndex==null){
      return Container();
    } else {
      return ListView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: reportIndex,
        itemBuilder: (BuildContext context, reportIndex)
        {
          return Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height/3.8,
              child: Card(
                elevation: 0.0,
                child: Padding(
                  padding: const EdgeInsets.only(top:10.0, left: 10.0, right: 10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      ListTile(
                        title: Text(type[reportIndex]),
                        subtitle: AutoSizeText("Sent on ${date[reportIndex]} ${time[reportIndex]}. Reported location: ${location[reportIndex]})",
                          maxLines: 2, ),
                      ),
                      Expanded(child: AutoSizeText(details[reportIndex], maxLines: 4, minFontSize:13, overflow: TextOverflow.ellipsis,)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.arrow_forward_ios),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      );
    }
  }
}

class NewsFeed extends StatelessWidget {

  NewsFeed({this.profilepic, this.headline, this.date, this.time, this.body, this.location});


  List<String> profilepic;
  List<String> headline;
  List<String> date;
  List<String> body;
  List<String> time;
  List<String> location;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemCount: headline.length,
      itemBuilder: (BuildContext context, index)
      {
        return Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height/3.8,
            child: Card(
              elevation: 0.0,
              child: Padding(
                padding: const EdgeInsets.only(top:10.0, left: 10.0, right: 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(
                          child: ClipOval(child: Image.network(profilepic[index], fit: BoxFit.cover,)
                          )
                      ),
                      title: Text(headline[index]),
                      subtitle: Row(children: <Widget>[ Text(date[index]),Text(" "), Text(time[index])],),
                    ),
                    Expanded(child: AutoSizeText(body[index], maxLines: 3, minFontSize:13, maxFontSize: 15, overflow: TextOverflow.ellipsis,)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.arrow_forward_ios),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class JobFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}

class PlaceFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}













