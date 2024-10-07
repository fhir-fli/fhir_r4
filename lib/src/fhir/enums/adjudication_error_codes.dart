import 'package:json_annotation/json_annotation.dart';

/// This value set includes a smattering of adjudication codes.
enum AdjudicationErrorCodes {
  /// Display: Missing Identifier
  /// Definition: Missing Identifier
  @JsonValue('a001')
  a001,

  /// Display: Missing Creation Date
  /// Definition: Missing Creation Date
  @JsonValue('a002')
  a002,
  ;

  @override
  String toString() {
    switch (this) {
      case a001:
        return 'a001';
      case a002:
        return 'a002';
    }
  }

  String toJson() => toString();
  AdjudicationErrorCodes fromString(String str) {
    switch (str) {
      case 'a001':
        return AdjudicationErrorCodes.a001;
      case 'a002':
        return AdjudicationErrorCodes.a002;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  AdjudicationErrorCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
