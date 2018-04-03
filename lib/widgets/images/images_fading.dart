//region README
//More info at https://flutter.io/cookbook/images/fading-in-images/
//Requires the package transparent_image -> https://pub.dartlang.org/packages/transparent_image#-installing-tab-
//endregion

import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';


class ImagesFading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Fade in images';

    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Stack(
          children: <Widget>[
            new Center(child: new CircularProgressIndicator()),
            new Center(
              child: new FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image:
                'https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true',
              ),
            ),
          ],
        ),
      ),
    );
  }
}