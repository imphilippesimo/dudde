import 'package:dudde/AppTile.dart';
import 'package:dudde/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:dudde/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.black,
              displayColor: Colors.grey[600],
            ),
        primarySwatch: Colors.blue,
        accentColor: Colors.pinkAccent,
      ),
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        namedSplashScreenRoute: (BuildContext context) => SplashScreen(),
        namedAppTileRoute: (BuildContext context) => AppTile(),
      },
    );
  }
}
