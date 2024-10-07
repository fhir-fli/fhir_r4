import 'package:json_annotation/json_annotation.dart';

/// Overall nature of the adverse event, e.g. real or potential.
enum AdverseEventActuality {
  /// Display: Adverse Event
  /// Definition: The adverse event actually happened regardless of whether anyone was affected or harmed.
  @JsonValue('actual')
  actual,

  /// Display: Potential Adverse Event
  /// Definition: A potential adverse event.
  @JsonValue('potential')
  potential,
  ;

  @override
  String toString() {
    switch (this) {
      case actual:
        return 'actual';
      case potential:
        return 'potential';
    }
  }

  String toJson() => toString();
  AdverseEventActuality fromString(String str) {
    switch (str) {
      case 'actual':
        return AdverseEventActuality.actual;
      case 'potential':
        return AdverseEventActuality.potential;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  AdverseEventActuality fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
