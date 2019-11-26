import 'package:flutter/material.dart';


class OfficeButton extends StatelessWidget {

  OfficeButton({this.officeName, this.details, this.officeSeal, this.route});

  final String officeName;
  final String details;
  final String officeSeal;
  final String route;

  final double spacing = 10.0;
  final double radius = 10.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: spacing,
      ),
      child: RaisedButton(
        shape: new RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: Colors.purple)
        ),
        color: Colors.white,
        textColor: Colors.purple,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Image(image: AssetImage(officeSeal)),
              title: Text(officeName.toUpperCase(), style: TextStyle( fontSize: 20),),
              subtitle: Text(details.toUpperCase()),
            ),
          ],
        ),
        onPressed: () { Navigator.pushNamed(context, route);},
      ),
    );
  }

}