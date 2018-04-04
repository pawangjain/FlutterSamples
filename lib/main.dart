library example.object_to_json;

//region imports
import 'package:dson/dson.dart';
import 'package:flutter/material.dart';
import 'package:flutter_samples/entities/euser.dart';
import 'package:flutter_samples/widgets/menu.dart';

part 'main.g.dart'; //precis para dson
//endregion

void main() {
  _initMirrors(); //precisa disso para dson funcionar
  runApp(new Menu());
}
