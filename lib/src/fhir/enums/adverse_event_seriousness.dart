import 'package:json_annotation/json_annotation.dart';

/// Overall seriousness of this event for the patient.
enum AdverseEventSeriousness {
  /// Display: Non-serious
  /// Definition: Non-serious.
  @JsonValue('Non-serious')
  Non_serious,

  /// Display: Serious
  /// Definition: Serious.
  @JsonValue('Serious')
  Serious,
  ;

  @override
  String toString() {
    switch (this) {
      case Non_serious:
        return 'Non-serious';
      case Serious:
        return 'Serious';
    }
  }

  String toJson() => toString();
  AdverseEventSeriousness fromString(String str) {
    switch (str) {
      case 'Non-serious':
        return AdverseEventSeriousness.Non_serious;
      case 'Serious':
        return AdverseEventSeriousness.Serious;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  AdverseEventSeriousness fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
