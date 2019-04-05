import 'package:dudde/constants.dart';
import 'package:flutter/material.dart';

class AppMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMediaQuery(context));

    return Container(
      child: _buildMenu(MediaQuery.of(context).orientation),
      padding: EdgeInsets.only(
        left: 8.0,
        bottom: 50.0,
        right: 8.0,
      ),
    );
  }

  _buildMenu(Orientation deviceOrientation) {
    if (deviceOrientation == Orientation.portrait) {
      //TODO define portrait menu

    } else {
      //TODO define landscape menu
    }

    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Material(
          color: Colors.transparent,
          child: Container(
            height: menuItemHeight,
            child: InkWell(
              onTap: () => {print("$menuItemsNames[index] tapped")},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    menuItemsNames[index],
                    style: Theme.of(context).textTheme.title.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
      itemCount: menuItemsNames.length,
    );
  }
}
