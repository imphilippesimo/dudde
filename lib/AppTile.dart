import 'package:dudde/AppMenu.dart';
import 'package:dudde/backdrop.dart';
import 'package:dudde/constants.dart';
import 'package:dudde/dietExplorer.dart';
import 'package:flutter/material.dart';

class AppTile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AppTileState();
  }
}

class _AppTileState extends State<AppTile> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Backdrop(
      backPanel: AppMenu(),
      frontPanel: DietExplorer(),
      backTitle: Text(menu),
      frontTitle: Text(chatWithDude),
      currentMenu: menuItemsNames[0],
    );
  }
}
