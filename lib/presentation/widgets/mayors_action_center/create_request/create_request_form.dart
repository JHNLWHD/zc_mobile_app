import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zc_mobile_app/presentation/blocs/mayors_action_center/create_request/create_request.dart';
import 'package:zc_mobile_app/presentation/widgets/common/custom_button.dart';

class CreateRequestForm extends StatefulWidget {
  State<CreateRequestForm> createState() => _CreateRequestFormState();
}

class _CreateRequestFormState extends State<CreateRequestForm> {
  final TextEditingController _requestTypeController = TextEditingController();
  final TextEditingController _requestDescriptionController = TextEditingController();

  CreateRequestBloc _createRequestBloc;

  bool get isPopulated =>
      _requestTypeController.text.isNotEmpty && _requestDescriptionController.text.isNotEmpty;

  bool isCreateRequestButtonEnabled(CreateRequestState state) {
    return state.isFormValid && isPopulated && !state.isSubmitting;
  }

  @override
  void initState() {
    super.initState();
    _createRequestBloc = BlocProvider.of<CreateRequestBloc>(context);
    _requestTypeController.addListener(_onRequestTypeChanged);
    _requestDescriptionController.addListener(_onRequestDescriptionChanged);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateRequestBloc, CreateRequestState>(
      listener: (context, state) {
        if (state.isSubmitting) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('CreateRequesting...'),
                    CircularProgressIndicator(),
                  ],
                ),
              ),
            );
        }
        if (state.isSuccess) {
          BlocProvider.of<CreateRequestBloc>(context).add(Success());
          Navigator.of(context).pop();
        }
        if (state.isFailure) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Submitting Failure'),
                    Icon(Icons.error),
                  ],
                ),
                backgroundColor: Colors.red,
              ),
            );
        }
      },
      child: BlocBuilder<CreateRequestBloc, CreateRequestState>(
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.all(20),
            child: Form(
              child: ListView(
                children: <Widget>[
                  TextFormField(
                    controller: _requestTypeController,
                    decoration: InputDecoration(
                      icon: Icon(Icons.text_format),
                      labelText: 'Request Type',
                    ),
                    autocorrect: false,
                    autovalidate: true,
                    validator: (_) {
                      return !state.isRequestTypeValid ? 'Invalid Request Type' : null;
                    },
                  ),
                  TextFormField(
                    controller: _requestDescriptionController,
                    decoration: InputDecoration(
                      icon: Icon(Icons.description),
                      labelText: 'Request Description',
                    ),
                    obscureText: true,
                    autocorrect: false,
                    autovalidate: true,
                    validator: (_) {
                      return !state.isRequestDescriptionValid ? 'Invalid Request Description' : null;
                    },
                  ),
                  CustomButton(title: "Sumbit Request",
                    onPressed: isCreateRequestButtonEnabled(state)
                        ? _onFormSubmitted
                        : null,
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
    _requestTypeController.dispose();
    _requestDescriptionController.dispose();
    super.dispose();
  }

  void _onRequestTypeChanged() {
    _createRequestBloc.add(
      RequestTypeChanged(requestType: _requestTypeController.text),
    );
  }

  void _onRequestDescriptionChanged() {
    _createRequestBloc.add(
      RequestDescriptionChanged(requestDescription: _requestDescriptionController.text),
    );
  }

  void _onFormSubmitted() {
    _createRequestBloc.add(
      Submitted(
        requestType: _requestTypeController.text,
        requestDescription: _requestDescriptionController.text,
      ),
    );
  }
}
