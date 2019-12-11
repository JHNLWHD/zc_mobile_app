import 'package:flutter/material.dart';
import 'package:zc_mobile_app/presentation/utils/custom_drawer_icons.dart';

enum VisibilityFlag {
  visible,
  gone,
}

class DrawerVisibility extends StatelessWidget {
  final VisibilityFlag visibility;

  DrawerVisibility({
    @required this.visibility,
  });

  @override
  Widget build(BuildContext context) {
    if (visibility == VisibilityFlag.visible) {
      return IconButton(
        icon: Icon(
          CustomIcons.menu,
          color: Colors.white,
        ),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      );
    } else {
      // If gone, we replace child with a custom widget (defaulting to a
      // [Container] with no defined size).
      return IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          });
    }
  }
}
