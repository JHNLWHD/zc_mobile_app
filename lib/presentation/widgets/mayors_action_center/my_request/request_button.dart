import 'package:flutter/material.dart';

class RequestButton extends StatelessWidget {

  RequestButton({this.requestType, this.requestDescription, this.pageRoute});

  final String requestType;
  final String requestDescription;
  final String pageRoute;

  final double spacing = 10.0;
  final double radius = 10.0;
  final buttonColor = Colors.white10;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: spacing,),
      child: RaisedButton(
        elevation: 0.0,
        color: buttonColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: Colors.purple)),
        onPressed: () { Navigator.pushNamed(context, pageRoute);},
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.description),
              title: Text(requestType),
              subtitle: Text(requestDescription),
            ),
          ],
        ),

      ),
    );
  }

}