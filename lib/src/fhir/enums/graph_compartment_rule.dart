import 'package:json_annotation/json_annotation.dart';

/// How a compartment must be linked.
enum GraphCompartmentRule {
  /// Display: Identical
  /// Definition: The compartment must be identical (the same literal reference).
  @JsonValue('identical')
  identical,

  /// Display: Matching
  /// Definition: The compartment must be the same - the record must be about the same patient, but the reference may be different.
  @JsonValue('matching')
  matching,

  /// Display: Different
  /// Definition: The compartment must be different.
  @JsonValue('different')
  different,

  /// Display: Custom
  /// Definition: The compartment rule is defined in the accompanying FHIRPath expression.
  @JsonValue('custom')
  custom,
  ;

  @override
  String toString() {
    switch (this) {
      case identical:
        return 'identical';
      case matching:
        return 'matching';
      case different:
        return 'different';
      case custom:
        return 'custom';
    }
  }

  String toJson() => toString();
  static GraphCompartmentRule fromString(String str) {
    switch (str) {
      case 'identical':
        return GraphCompartmentRule.identical;
      case 'matching':
        return GraphCompartmentRule.matching;
      case 'different':
        return GraphCompartmentRule.different;
      case 'custom':
        return GraphCompartmentRule.custom;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static GraphCompartmentRule fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
