import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class MenuButton extends StatelessWidget {
  MenuButton({this.icon, this.title, this.routeName, this.toNextPage});

  final String icon;
  final String title;
  final String routeName;
  final MaterialPageRoute toNextPage;

  @override
  Widget build(BuildContext context) {
    final double screensize = MediaQuery.of(context).size.height;
    final double cardHeight = MediaQuery.of(context).size.height / 5;
    final double cardWidth = MediaQuery.of(context).size.width / 1.1;

    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: cardHeight / 2.5,
            width: cardWidth / 5,
            color: Colors.transparent,
            child: FittedBox(
              fit: BoxFit.contain,
              child: RaisedButton(
                elevation: 0,
                color: Colors.white,
                highlightElevation: 2,
                highlightColor: Colors.white,
                child: Image(
                  image: AssetImage(icon),
                ),
                onPressed: () {
                  Navigator.of(context).push(toNextPage);
                },
              ),
            ),
          ),
          Container(
              height: cardHeight / 2.5,
              width: cardWidth / 5,
              child: Center(
                  child: AutoSizeText(
                title,
                style: TextStyle(fontSize: 13.0),
                maxLines: 2,
                textAlign: TextAlign.center,
              ))),
        ],
      ),
    );
  }
}

final menuButton = MenuButton();
