import 'package:flutter/material.dart';

class ReportsButton extends StatelessWidget {

  ReportsButton({this.reportTitle, this.reportDescription, VoidCallback onPressed})
      : _onPressed = onPressed;

  final String reportTitle;
  final String reportDescription;
  final VoidCallback _onPressed;

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
        onPressed: _onPressed,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.description),
              title: Text(reportTitle),
              subtitle: Text(reportDescription),
            ),
          ],
        ),

      ),
    );
  }

}