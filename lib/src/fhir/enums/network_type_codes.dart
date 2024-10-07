import 'package:json_annotation/json_annotation.dart';

/// This value set includes a smattering of Network type codes.
enum NetworkTypeCodes {
  /// Display: In Network
  /// Definition: Services rendered by a Network provider
  @JsonValue('in')
  in_,

  /// Display: Out of Network
  /// Definition: Services rendered by a provider who is not in the Network
  @JsonValue('out')
  out,
  ;

  @override
  String toString() {
    switch (this) {
      case in_:
        return 'in';
      case out:
        return 'out';
    }
  }

  String toJson() => toString();
  NetworkTypeCodes fromString(String str) {
    switch (str) {
      case 'in':
        return NetworkTypeCodes.in_;
      case 'out':
        return NetworkTypeCodes.out;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  NetworkTypeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
