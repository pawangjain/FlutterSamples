//region README
/*
1) More info at https://flutter.io/cookbook/design/fonts/
2) Download fonts from https://fonts.google.com
3) Copy the fonts into app/fonts directory
4) Add the following lines into pubspec.yaml:
  fonts:
      - family: Raleway
        fonts:
          - asset: fonts/Raleway-Regular.ttf
          - asset: fonts/Raleway-Italic.ttf
            style: italic
      - family: RobotoMono
        fonts:
          - asset: fonts/RobotoMono-Regular.ttf
          - asset: fonts/RobotoMono-Bold.ttf
            weight: 700
 */
//endregion

//region imports
import 'package:flutter/material.dart';
//endregion

class CustomFontsSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Custom Fonts',
      // Set Raleway as the default app font
      theme: new ThemeData(fontFamily: 'Raleway'),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // The AppBar will use the app-default Raleway font
      appBar: new AppBar(title: new Text('Custom Fonts Sample')),
      body: new Center(
        // This Text Widget will use the RobotoMono font
        child: new Text(
          'Roboto Mono sample',
          style: new TextStyle(fontFamily: 'RobotoMono',fontSize: 35.0),
        ),
      ),
    );
  }
}