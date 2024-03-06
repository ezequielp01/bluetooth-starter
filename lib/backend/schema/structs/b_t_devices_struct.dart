// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BTDevicesStruct extends BaseStruct {
  BTDevicesStruct({
    String? name,
    String? id,
    int? rssi,
  })  : _name = name,
        _id = id,
        _rssi = rssi;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "rssi" field.
  int? _rssi;
  int get rssi => _rssi ?? 0;
  set rssi(int? val) => _rssi = val;
  void incrementRssi(int amount) => _rssi = rssi + amount;
  bool hasRssi() => _rssi != null;

  static BTDevicesStruct fromMap(Map<String, dynamic> data) => BTDevicesStruct(
        name: data['name'] as String?,
        id: data['id'] as String?,
        rssi: castToType<int>(data['rssi']),
      );

  static BTDevicesStruct? maybeFromMap(dynamic data) => data is Map
      ? BTDevicesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'id': _id,
        'rssi': _rssi,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'rssi': serializeParam(
          _rssi,
          ParamType.int,
        ),
      }.withoutNulls;

  static BTDevicesStruct fromSerializableMap(Map<String, dynamic> data) =>
      BTDevicesStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        rssi: deserializeParam(
          data['rssi'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'BTDevicesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BTDevicesStruct &&
        name == other.name &&
        id == other.id &&
        rssi == other.rssi;
  }

  @override
  int get hashCode => const ListEquality().hash([name, id, rssi]);
}

BTDevicesStruct createBTDevicesStruct({
  String? name,
  String? id,
  int? rssi,
}) =>
    BTDevicesStruct(
      name: name,
      id: id,
      rssi: rssi,
    );
