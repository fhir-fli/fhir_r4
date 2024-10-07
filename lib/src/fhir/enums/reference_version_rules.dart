import 'package:json_annotation/json_annotation.dart';

/// Whether a reference needs to be version specific or version independent, or whether either can be used.
enum ReferenceVersionRules {
  /// Display: Either Specific or independent
  /// Definition: The reference may be either version independent or version specific.
  @JsonValue('either')
  either,
  /// Display: Version independent
  /// Definition: The reference must be version independent.
  @JsonValue('independent')
  independent,
  /// Display: Version Specific
  /// Definition: The reference must be version specific.
  @JsonValue('specific')
  specific,
;

@override
  String toString() {
      switch(this) {
        case either: return 'either';
        case independent: return 'independent';
        case specific: return 'specific';
      }
      }
String toJson() => toString();
  ReferenceVersionRules fromString(String str) {
    switch(str) {
      case 'either': return ReferenceVersionRules.either;
      case 'independent': return ReferenceVersionRules.independent;
      case 'specific': return ReferenceVersionRules.specific;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ReferenceVersionRules fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

