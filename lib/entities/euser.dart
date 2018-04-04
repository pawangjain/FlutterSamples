library example.object_to_json;

import 'package:dson/dson.dart';

part 'package:flutter_samples/entities/euser.g.dart';

//@JsonSerializable()
@serializable
class EUser extends _$EUserSerializable {
  String name;
  String address;
}
