import 'package:json_annotation/json_annotation.dart';

/// This value set defines the set of codes that can be used to indicate the marital status of a person.
enum MaritalStatusCodes {
  @JsonValue('UNK')
  UNK,
  ;

  @override
  String toString() {
    switch (this) {
      case UNK:
        return 'UNK';
    }
  }

  String toJson() => toString();
  static MaritalStatusCodes fromString(String str) {
    switch (str) {
      case 'UNK':
        return MaritalStatusCodes.UNK;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static MaritalStatusCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
