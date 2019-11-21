import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback _onPressed;

  CustomButton({this.title, VoidCallback onPressed})
      : _onPressed = onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: new RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Colors.purple)
      ),
      color: Colors.white,
      textColor: Colors.purple,
      child: Text(title.toUpperCase(), style: TextStyle( fontSize: 20),),
      onPressed: _onPressed,
    );
  }
}
