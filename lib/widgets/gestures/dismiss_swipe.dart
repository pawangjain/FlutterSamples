//region README
//More info at https://flutter.io/cookbook/gestures/dismissible/
//endregion

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DismissSwipe extends StatelessWidget {
  List<String> _items;

  DismissSwipe() {
    this._items= new List<String>.generate(20, (i) => "Item ${i + 1}");
  }

  @override
  Widget build(BuildContext context) {
    final title = 'Dismissing Items';

    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new ListView.builder(
          itemCount: _items.length,
          itemBuilder: (context, index) {
            final item = _items[index];

            return new Dismissible(
              // Each Dismissible must contain a Key. Keys allow Flutter to
              // uniquely identify Widgets.
              key: new Key(item),
              // We also need to provide a function that will tell our app
              // what to do after an item has been swiped away.
              onDismissed: (direction) {
                _items.removeAt(index);

                Scaffold.of(context).showSnackBar(
                    new SnackBar(content: new Text("$item dismissed")));
              },
              // Show a red background as the item is swiped away
              background: new Container(color: Colors.red),
              child: new ListTile(title: new Text('$item')),
            );
          },
        ),
      ),
    );
  }
}