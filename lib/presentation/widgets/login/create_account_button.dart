import 'package:flutter/material.dart';
import 'package:zc_mobile_app/presentation/pages/register/register_page.dart';
import 'package:zc_mobile_app/user_repository/user_repository.dart';

class CreateAccountButton extends StatelessWidget {
  final UserRepository _userRepository;

  CreateAccountButton({Key key, @required UserRepository userRepository})
      : assert(userRepository != null),
        _userRepository = userRepository,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(
        'Create an Account',
      ),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return RegisterPage(userRepository: _userRepository);
          }),
        );
      },
    );
  }
}
