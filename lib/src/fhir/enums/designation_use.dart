import 'package:json_annotation/json_annotation.dart';

/// Details of how a designation would be used
enum DesignationUse {
  @JsonValue('900000000000003001')
  value900000000000003001,
  @JsonValue('900000000000013009')
  value900000000000013009,
  ;

  @override
  String toString() {
    switch (this) {
      case value900000000000003001:
        return '900000000000003001';
      case value900000000000013009:
        return '900000000000013009';
    }
  }

  String toJson() => toString();
  DesignationUse fromString(String str) {
    switch (str) {
      case '900000000000003001':
        return DesignationUse.value900000000000003001;
      case '900000000000013009':
        return DesignationUse.value900000000000013009;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  DesignationUse fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
