// GENERATED CODE - DO NOT MODIFY BY HAND

part of example.object_to_json;

// **************************************************************************
// Generator: DsonGenerator
// **************************************************************************

abstract class _$EUserSerializable extends SerializableMap {
  String get name;
  String get address;
  void set name(String v);
  void set address(String v);

  operator [](Object __key) {
    switch (__key) {
      case 'name':
        return name;
      case 'address':
        return address;
    }
    throwFieldNotFoundException(__key, 'EUser');
  }

  operator []=(Object __key, __value) {
    switch (__key) {
      case 'name':
        name = __value;
        return;
      case 'address':
        address = __value;
        return;
    }
    throwFieldNotFoundException(__key, 'EUser');
  }

  Iterable<String> get keys => EUserClassMirror.fields.keys;
}

// **************************************************************************
// Generator: MirrorsGenerator
// **************************************************************************

_EUser__Constructor([positionalParams, namedParams]) => new EUser();

const $$EUser_fields_name = const DeclarationMirror(name: 'name', type: String);
const $$EUser_fields_address =
    const DeclarationMirror(name: 'address', type: String);

const EUserClassMirror = const ClassMirror(name: 'EUser', constructors: const {
  '': const FunctionMirror(name: '', $call: _EUser__Constructor)
}, fields: const {
  'name': $$EUser_fields_name,
  'address': $$EUser_fields_address
}, getters: const [
  'name',
  'address'
], setters: const [
  'name',
  'address'
]);
