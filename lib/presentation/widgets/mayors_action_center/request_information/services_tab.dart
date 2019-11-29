import 'package:flutter/material.dart';

import 'service_panel.dart';

class ServicesTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[
              ServicePanel(
                serviceName: "HOW TO WHAT",
                serviceImage: "images/sample1.jpg",
                aboutService: "STEP 1\n"
                    "STEP 2\n"
                    "STEP 3",
              ),

              ServicePanel(
                serviceName: "HOW TO WHAT",
                serviceImage: "images/sample2.jpg",
                aboutService: "STEP 1\n"
                    "STEP 2\n"
                    "STEP 3",
              ),

              ServicePanel(
                serviceName: "HOW TO WHAT",
                serviceImage: "images/sample3.jpg",
                aboutService: "STEP 1\n"
                    "STEP 2\n"
                    "STEP 3",
              ),

            ],
          ),
        )
    );
  }
}