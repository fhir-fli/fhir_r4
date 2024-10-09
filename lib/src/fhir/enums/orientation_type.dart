import 'package:json_annotation/json_annotation.dart';

/// Type for orientation.
enum OrientationType {
  /// Display: Sense orientation of referenceSeq
  /// Definition: Sense orientation of reference sequence.
  @JsonValue('sense')
  sense,

  /// Display: Antisense orientation of referenceSeq
  /// Definition: Antisense orientation of reference sequence.
  @JsonValue('antisense')
  antisense,
  ;

  @override
  String toString() {
    switch (this) {
      case sense:
        return 'sense';
      case antisense:
        return 'antisense';
    }
  }

  String toJson() => toString();
  static OrientationType fromString(String str) {
    switch (str) {
      case 'sense':
        return OrientationType.sense;
      case 'antisense':
        return OrientationType.antisense;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static OrientationType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
