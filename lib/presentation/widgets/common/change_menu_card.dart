import 'package:flutter/material.dart';

import 'menu_button.dart';

enum ChangeMenuCardFlag {
  home_page,
  citizen_report,
  peso_job_listing,
  places,

}

class ChangeMenuCard extends StatelessWidget {

  ChangeMenuCard({
    @required this.change,
  });

  final ChangeMenuCardFlag change;

  @override
  Widget build(BuildContext context) {

    final double screensize = MediaQuery.of(context).size.height;
    final double cardHeight = MediaQuery.of(context).size.height / 5;
    final double cardWidth = MediaQuery.of(context).size.width / 1.1;

    if (change == ChangeMenuCardFlag.citizen_report) {
      return Center(
        child: Padding(
          padding: EdgeInsets.only(
            top: 100,
          ),
          child: SizedBox(
            width: cardWidth,
            height: cardHeight,
            child: Card(
              elevation: 1.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: CitizenReportMenuCard(),
              ),
            ),
          ),
        ),
      );
    }
    else if (change == ChangeMenuCardFlag.home_page){
      return Center(
        child: Padding(
          padding: EdgeInsets.only(
            top: 100,
          ),
          child: SizedBox(
            width: cardWidth,
            height: cardHeight,
            child: Card(
              elevation: 1.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: HomePageMenuCard(),
              ),
            ),
          ),
        ),
      );
    }
    else if (change == ChangeMenuCardFlag.peso_job_listing){
      return Center(
        child: Padding(
          padding: EdgeInsets.only(
            top: 100,
          ),
          child: SizedBox(
            width: cardWidth,
            height: cardHeight,
            child: Card(
              elevation: 1.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: PJLMenuCard(),
              ),
            ),
          ),
        ),
      );
    }
    else if (change == ChangeMenuCardFlag.places){
      return Center(
        child: Padding(
          padding: EdgeInsets.only(
            top: 100,
          ),
          child: SizedBox(
            width: cardWidth,
            height: cardHeight,
            child: Card(
              elevation: 1.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: PlacesMenuCard(),
              ),
            ),
          ),
        ),
      );
    }

  }
}

class HomePageMenuCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final double screensize = MediaQuery.of(context).size.height;
    final double cardHeight = MediaQuery.of(context).size.height / 5;
    final double cardWidth = MediaQuery.of(context).size.width / 1.1;

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: cardHeight / 1.5,
          width: cardWidth / 5,
          child: FittedBox(
            fit: BoxFit.contain,
            child: MenuButton(
              title: "Citizen Report",
              icon: "assets/custom_icons_images/citizen_report.png",
            ),
          ),
        ),
        VerticalDivider(),
        Container(
          height: cardHeight / 1.5,
          width: cardWidth / 5,
          child: FittedBox(
            fit: BoxFit.contain,
            child: MenuButton(
              title: "Government Directory",
              icon: "assets/custom_icons_images/government_directory.png",
            ),
          ),
        ),
        VerticalDivider(),
        Container(
          height: cardHeight / 1.5,
          width: cardWidth / 5,
          child: FittedBox(
            fit: BoxFit.contain,
            child: MenuButton(
              title: "PESO Job Listing",
              icon: "assets/custom_icons_images/peso_job_listing.png",
            ),
          ),
        ),
        VerticalDivider(),
        Container(
          height: cardHeight / 1.5,
          width: cardWidth / 5,
          child: FittedBox(
            fit: BoxFit.contain,
            child: MenuButton(
              title: "Places",
              icon: "assets/custom_icons_images/places.png",
            ),
          ),
        ),
      ],
    );
  }
}

class CitizenReportMenuCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final double screensize=MediaQuery.of(context).size.height;
    final double cardHeight=MediaQuery.of(context).size.height/5;
    final double cardWidth=MediaQuery.of(context).size.width/1.1;

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: cardHeight/1.5,
          width: cardWidth/5,
          child: FittedBox(
            fit: BoxFit.contain,
            child: MenuButton(
              title: "Crime",
              icon: "assets/custom_icons_images/crime.png",
            ),
          ),
        ),
        VerticalDivider(),
        Container(
          height: cardHeight/1.5,
          width: cardWidth/5,
          child: FittedBox(
            fit: BoxFit.contain,
            child: MenuButton(
              title: "Fire",
              icon: "assets/custom_icons_images/fire.png",
            ),
          ),
        ),
        VerticalDivider(),
        Container(
          height: cardHeight/1.5,
          width: cardWidth/5,
          child: FittedBox(
            fit: BoxFit.contain,
            child: MenuButton(
              title: "Flood",
              icon: "assets/custom_icons_images/flood.png",
            ),
          ),
        ),
        VerticalDivider(),
        Container(
          height: cardHeight/1.5,
          width: cardWidth/5,
          child: FittedBox(
            fit: BoxFit.contain,
            child: MenuButton(
              title: "Vehicular Accident",
              icon: "assets/custom_icons_images/vehicular_accident.png",
            ),
          ),
        ),
      ],
    );
  }
}

class PJLMenuCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final double screensize=MediaQuery.of(context).size.height;
    final double cardHeight=MediaQuery.of(context).size.height/5;
    final double cardWidth=MediaQuery.of(context).size.width/1.1;

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: cardHeight/1.5,
          width: cardWidth/2.2,
          child: FittedBox(
            fit: BoxFit.contain,
            child: MenuButton(
              title: "Job Openings",
              icon: "assets/custom_icons_images/job_openings.png",
            ),
          ),
        ),
        VerticalDivider(),
        Container(
          height: cardHeight/1.5,
          width: cardWidth/2.2,
          child: FittedBox(
            fit: BoxFit.contain,
            child: MenuButton(
              title: "Saved Jobs",
              icon: "assets/custom_icons_images/saved_jobs.png",
            ),
          ),
        ),
      ],
    );
  }
}

class PlacesMenuCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screensize = MediaQuery.of(context).size.height;
    final double cardHeight = MediaQuery.of(context).size.height/ 5;
    final double cardWidth = MediaQuery.of(context).size.width / 1.1;

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: cardHeight / 1.5,
          width: cardWidth / 2.2,
          child: FittedBox(
            fit: BoxFit.contain,
            child: MenuButton(
              title: "Restaurants",
              icon: "assets/custom_icons_images/job_openings.png",
            ),
          ),
        ),
        VerticalDivider(),
        Container(
          height: cardHeight / 1.5,
          width: cardWidth / 2.2,
          child: FittedBox(
            fit: BoxFit.contain,
            child: MenuButton(
              title: "Activity Centers",
              icon: "assets/custom_icons_images/saved_jobs.png",
            ),
          ),
        ),
      ],
    );
  }
}

