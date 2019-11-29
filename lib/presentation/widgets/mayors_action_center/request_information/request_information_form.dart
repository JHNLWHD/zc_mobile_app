import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zc_mobile_app/presentation/blocs/mayors_action_center/request_information/request_information_menu/request_information_menu.dart';
import 'package:zc_mobile_app/presentation/pages/mayors_action_center/office_page.dart';
import 'office_button.dart';

class RequestInformationForm extends StatefulWidget {
  State<RequestInformationForm> createState() => _RequestInformationFormState();
}

class _RequestInformationFormState extends State<RequestInformationForm> {
  RequestInformationMenuBloc _MenuBloc;

  @override
  void initState() {
    super.initState();
    _MenuBloc = BlocProvider.of<RequestInformationMenuBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RequestInformationMenuBloc, RequestInformationMenuState>(
      listener: (context, state) {
        if (state is OfficeNotLoaded) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Office Not Loaded'), Icon(Icons.error)],
                ),
                backgroundColor: Colors.red,
              ),
            );
        }
        if (state is OfficeLoading) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Loading ...'),
                    CircularProgressIndicator(),
                  ],
                ),
              ),
            );
        }
        if (state is OfficeLoaded) {
          BlocProvider.of<RequestInformationMenuBloc>(context).add(LoadOfficeMenu());
        }
      },
      child: BlocBuilder<RequestInformationMenuBloc, RequestInformationMenuState>(
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.all(10.0),
            child: SafeArea(
              child: ListView(
                children: <Widget>[
                  OfficeButton(
                    officeName: "Office of the City Mayor",
                    details: "Address",
                    officeSeal:"assets/seal.png",
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return OfficePage();
                        }),
                      );
                    },
                  ),
                  OfficeButton(
                    officeName: "Sangguniang Panglungsod",
                    details: "Address",
                    officeSeal:"assets/seal.png",
                    onPressed: () {

                    },
                  ),
                  OfficeButton(
                    officeName: "Secretary to the Sangguniang Panglungsod",
                    details: "Address",
                    officeSeal:"assets/seal.png",
                    onPressed: () {

                    },
                  ),
                  OfficeButton(
                    officeName: "Office of the City Administrator",
                    details: "Address",
                    officeSeal:"assets/seal.png",
                    onPressed: () {

                    },
                  ),
                  OfficeButton(
                    officeName: "Office of the City Accountant",
                    details: "Address",
                    officeSeal:"assets/seal.png",
                    onPressed: () {

                    },
                  ),
                  OfficeButton(
                    officeName: "Office of the City Treasurer",
                    details: "Address",
                    officeSeal:"assets/seal.png",
                    onPressed: () {

                    },
                  ),
                  OfficeButton(
                    officeName: "Office of the City Assessor",
                    details: "Address",
                    officeSeal:"assets/seal.png",
                    onPressed: () {

                    },
                  ),
                  OfficeButton(
                    officeName: "General Services Office",
                    details: "Address",
                    officeSeal:"assets/seal.png",
                    onPressed: () {

                    },
                  ),
                  OfficeButton(
                    officeName: "Office of the City Human Resource Management",
                    details: "Address",
                    officeSeal:"assets/seal.png",
                    onPressed: () {

                    },
                  ),
                  OfficeButton(
                    officeName: "Office of the City Engineer",
                    details: "Address",
                    officeSeal:"assets/seal.png",
                    onPressed: () {

                    },
                  ),
                  OfficeButton(
                    officeName: "Office of the City Health",
                    details: "Address",
                    officeSeal:"assets/seal.png",
                    onPressed: () {

                    },
                  ),
                  OfficeButton(
                    officeName: "Office of the City Social Welfare and Development",
                    details: "Address",
                    officeSeal:"assets/seal.png",
                    onPressed: () {

                    },
                  ),
                  OfficeButton(
                    officeName: "Office of the City Budget",
                    details: "Address",
                    officeSeal:"assets/seal.png",
                    onPressed: () {

                    },
                  ),
                  OfficeButton(
                    officeName: "Office of the City Legal",
                    details: "Address",
                    officeSeal:"assets/seal.png",
                    onPressed: () {

                    },
                  ),
                  OfficeButton(
                    officeName: "Office of the City Civil Registrar",
                    details: "Address",
                    officeSeal:"assets/seal.png",
                    onPressed: () {

                    },
                  ),
                  OfficeButton(
                    officeName: "Office of the City Environment and Natural Resources",
                    details: "Address",
                    officeSeal:"assets/seal.png",
                    onPressed: () {

                    },
                  ),
                  OfficeButton(
                    officeName: "Office of the City Planning and Development",
                    details: "Address",
                    officeSeal:"assets/seal.png",
                    onPressed: () {

                    },
                  ),
                  OfficeButton(
                    officeName: "Office of the City Agriculturist",
                    details: "Address",
                    officeSeal:"assets/seal.png",
                    onPressed: () {

                    },
                  ),
                  OfficeButton(
                    officeName: "Office of the City Veterinarian",
                    details: "Address",
                    officeSeal:"assets/seal.png",
                    onPressed: () {

                    },
                  ),
                  OfficeButton(
                    officeName: "Office of the City Disaster Risk Reduction Management",
                    details: "Address",
                    officeSeal:"assets/seal.png",
                    onPressed: () {

                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
