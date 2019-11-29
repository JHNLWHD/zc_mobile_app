import 'package:flutter/material.dart';

class ServicePanel extends StatelessWidget {

  ServicePanel({this.serviceName, this.aboutService, this.serviceImage});

  final String serviceName;
  final String aboutService;
  final String serviceImage;


  @override
  Widget build(BuildContext context) {
    return Card(
      shape: new RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
          side: BorderSide(color: Colors.purple)
      ),
      color: Colors.white,

      child: ExpansionTile(

        backgroundColor: Colors.white,
        title: Text(serviceName.toUpperCase(), style: TextStyle(color:Colors.purple),),

        children: <Widget>[

          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(image: AssetImage(serviceImage)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(aboutService),
          ),

        ],
      ),
    );
  }
}