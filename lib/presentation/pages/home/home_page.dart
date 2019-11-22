import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:zc_mobile_app/presentation/_bloc/authentication/authentication.dart';
import 'package:zc_mobile_app/presentation/pages/mayors_action_center/menu_page.dart';
import 'package:zc_mobile_app/presentation/pages/citizen_report/menu_page.dart';

class HomePage extends StatelessWidget {
  final List<String> userInfo;

  HomePage({Key key, @required this.userInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text('ILoveZApp'),
        centerTitle: true,
        gradient: LinearGradient(colors: [Colors.blue, Colors.purpleAccent])
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.purpleAccent]
                  ),
                ),
                accountName: Text('${userInfo[0]}'),
                accountEmail: Text('${userInfo[1]}'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('${userInfo[2]}'),
                ),
            ),
            Expanded(
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView(
                  children: <Widget>[
                    ListTile(
                        leading: Icon(Icons.home),
                        title: Text("Newsfeed"),
                        onTap: () {

                        }
                    ),
                    ListTile(
                        leading: Icon(Icons.call_to_action),
                        title: Text("Mayor's Action Center"),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) {
                              return MayorsActionCenterMenuPage();
                            }),
                          );
                        }
                    ),
                    ListTile(
                        leading: Icon(Icons.credit_card),
                        title: Text("Citizen Card"),
                        onTap: () {

                        }
                    ),
                    ListTile(
                        leading: Icon(Icons.report),
                        title: Text("Citizen Report"),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) {
                              return CitizenReportMenuPage();
                            }),
                          );
                        }
                    ),
                    ListTile(
                        leading: Icon(Icons.view_list),
                        title: Text("PESO Job Corner"),
                        onTap: () {

                        }
                    ),
                    ListTile(
                        leading: Icon(Icons.place),
                        title: Text("Places"),
                        onTap: () {

                        }
                    ),
                    ListTile(
                        leading: Icon(Icons.report_problem),
                        title: Text("SOS"),
                        onTap: () {

                        }
                    ),
                    ListTile(
                        leading: Icon(Icons.camera_alt),
                        title: Text("Zamboanga Moments"),
                        onTap: () {

                        }
                    ),
                    ListTile(
                        leading: Icon(Icons.folder),
                        title: Text("Terms and Conditions"),
                        onTap: () {

                        }
                    ),
                    ListTile(
                        leading: Icon(Icons.info_outline),
                        title: Text("About"),
                        onTap: () {

                        }
                    ),
                    ListTile(
                        leading: Icon(Icons.exit_to_app),
                        title: Text("Logout"),
                        onTap: () {
                          BlocProvider.of<AuthenticationBloc>(context).add(
                            LoggedOut(),
                          );
                        }
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Center(child: Text('Welcome ${userInfo[0]}!')),
        ],
      ),
    );
  }
}
