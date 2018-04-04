import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_samples/codes/logger.dart';
//region README
//More info at https://flutter.io/cookbook/images/cached-images/
//Requires the package cached_network_image -> https://pub.dartlang.org/packages/cached_network_image
//endregion

class ImagesCached extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    try {
      final title = 'Cached Images';
      return new MaterialApp(
        title: title,
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text(title),
          ),
          body: new Center(
            child: new CachedNetworkImage(
              imageUrl: "http://via.placeholder.com/350x150",
              placeholder: new CircularProgressIndicator(),
              errorWidget: new Icon(Icons.error),
            ),
          ),
        ),
      );
    } catch (e) {
      Logger.logError(e);
    }
    return null;
  }
}
