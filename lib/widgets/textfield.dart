//region README
//More info at https://docs.flutter.io/flutter/material/TextField-class.html
//endregion

import 'package:flutter/material.dart';

class VTextField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new TextFieldWidget();
  }
}

class TextFieldWidget extends State<VTextField> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
            appBar: new AppBar(
              title: new Text('TextField'),
            ),
            body: new Center(
                child: new Container(
                    height: 200.0,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(30.0),
                    child: new Column(children: [
                      new TextField(
                        decoration: new InputDecoration(hintText: 'user'),
                      ),
                    ])))));
  }
}
