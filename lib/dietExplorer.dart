import 'package:dudde/constants.dart';
import 'package:flutter/material.dart';

class DietExplorer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DietExplorerState();
  }
}

class _DietExplorerState extends State<DietExplorer> {
  @override
  Widget build(BuildContext context) {
    Orientation _deviceOrientation = MediaQuery.of(context).orientation;

    var input = Container(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            style: Theme.of(context).textTheme.display1,
            decoration: InputDecoration(
              labelStyle: Theme.of(context).textTheme.display1,
//              errorText: _showValidationError ? 'Invalid number entered' : null,
              labelText: askMe,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0.0),
              ),
            ),
            onChanged: _sendRequest,
          ),
        ],
      ),
    );

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[input],
      ),
    );
  }

  void _sendRequest(String value) {}
}
