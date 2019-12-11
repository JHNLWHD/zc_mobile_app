import 'package:flutter/material.dart';
import 'package:zc_mobile_app/presentation/widgets/common/base.dart';
import 'package:zc_mobile_app/presentation/widgets/common/change_menu_card.dart';
import 'package:zc_mobile_app/presentation/widgets/common/drawer_visibility.dart';
import 'package:zc_mobile_app/presentation/widgets/common/feed_card_change.dart';

class HomePage extends StatelessWidget {
  final List<String> userInfo;

  HomePage({Key key, @required this.userInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Base(
      appBarTitle: "I Love Zamboanga",
      feedTitle: "Newsfeed",
      showDrawer: DrawerVisibility(visibility: VisibilityFlag.visible,),
      menuCardType: ChangeMenuCard(change: ChangeMenuCardFlag.home_page,),
      feedCardType: NewsFeed(
        headline: ["OUTSTANDING PERFORMANCE IN REVENUE COLLECTION", "TOP PERFORMING CITY", "A SIGHT TO BEHOLD"],
        date: ['12/13/19','12/10/19','12/07/19'],
        time: ['12:54PM', '11:23AM', '1:54PM'],
        body: [
          "The Bureau of Local Government Finance (BLGF) honored the outstanding performance of the City of Zamboanga, under the leadership of Mayor Beng Climaco, in local revenue collection for the Calendar Year 2018 which resulted in the highest absolute amount from Real Property Tax, Business Tax, Fees and Charges and Receipts from Economic Enterprise. These contributions from the city formed 30.45% of the total local revenue of Region IX for Calendar Year 2018.",
          "Zamboanga City is conferred the Top 1 Performing City award for the 2019 Regional Disaster Preparedness Index by the Department of the Interior and Local Government. Mayor Beng Climaco with Zcdrrmo Zamboangacity Dr. Elmeir Apolinario received the plaque of recognition duringthe award rites Tuesday night. Con Dios todo gloria y alabanza por este reconocimiento que resulta del esfuerzo de cada y cual Zamboangueño para asegura el seguridad y buen estar del ciudad!",
          "Pascua na Zamboanga 2019 officially starts with the grand switch-on of the Christmas lights display in City Hall and the nearby parks and gardens earlier tonight. The 112 year old City Hall is once again a sight to behold, as it was in previous Christmases, drawing people from all walks of life. Mayor Beng Climaco spearheaded the grand switch-on ceremony with special guest Eduardo Rubio from Mexico. It's a Mexican-Filipino fiesta in Zamboanga this Christmas! "
        ],
        profilepic: [
          "https://scontent.fmnl4-3.fna.fbcdn.net/v/t1.0-9/p960x960/50577954_10156190884733014_3486177305796018176_o.jpg?_nc_cat=110&_nc_eui2=AeH8-XiVCwEkD_7cCjRbx8yY55NlDwCGns0tZw18cPElOGO4XVEJB20pdNhuFgKTW2y0hXr0S1sgxyAH63wHaWhEKfkhX-FBNV3CAYKJBTEoIg&_nc_ohc=8ACB3V4XOJcAQnSUxts4uiMfqDYAk6WqqqGGmOtGI4mIXcBdzhnvEPU7A&_nc_ht=scontent.fmnl4-3.fna&oh=dae5b19e03a03403efde35165eb56595&oe=5E755E22",
          "https://scontent.fmnl4-3.fna.fbcdn.net/v/t1.0-9/p960x960/50577954_10156190884733014_3486177305796018176_o.jpg?_nc_cat=110&_nc_eui2=AeH8-XiVCwEkD_7cCjRbx8yY55NlDwCGns0tZw18cPElOGO4XVEJB20pdNhuFgKTW2y0hXr0S1sgxyAH63wHaWhEKfkhX-FBNV3CAYKJBTEoIg&_nc_ohc=8ACB3V4XOJcAQnSUxts4uiMfqDYAk6WqqqGGmOtGI4mIXcBdzhnvEPU7A&_nc_ht=scontent.fmnl4-3.fna&oh=dae5b19e03a03403efde35165eb56595&oe=5E755E22",
          "https://scontent.fmnl4-3.fna.fbcdn.net/v/t1.0-9/p960x960/50577954_10156190884733014_3486177305796018176_o.jpg?_nc_cat=110&_nc_eui2=AeH8-XiVCwEkD_7cCjRbx8yY55NlDwCGns0tZw18cPElOGO4XVEJB20pdNhuFgKTW2y0hXr0S1sgxyAH63wHaWhEKfkhX-FBNV3CAYKJBTEoIg&_nc_ohc=8ACB3V4XOJcAQnSUxts4uiMfqDYAk6WqqqGGmOtGI4mIXcBdzhnvEPU7A&_nc_ht=scontent.fmnl4-3.fna&oh=dae5b19e03a03403efde35165eb56595&oe=5E755E22",
        ],
      ),
      bannerImage: "assets/home_page_banner.png",

    );
  }
}
