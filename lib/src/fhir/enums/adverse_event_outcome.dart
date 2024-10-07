import 'package:json_annotation/json_annotation.dart';

/// TODO (and should this be required?).
enum AdverseEventOutcome {
  /// Display: Resolved
  @JsonValue('resolved')
  resolved,

  /// Display: Recovering
  @JsonValue('recovering')
  recovering,

  /// Display: Ongoing
  @JsonValue('ongoing')
  ongoing,

  /// Display: Resolved with Sequelae
  @JsonValue('resolvedWithSequelae')
  resolvedWithSequelae,

  /// Display: Fatal
  @JsonValue('fatal')
  fatal,

  /// Display: Unknown
  @JsonValue('unknown')
  unknown,
  ;

  @override
  String toString() {
    switch (this) {
      case resolved:
        return 'resolved';
      case recovering:
        return 'recovering';
      case ongoing:
        return 'ongoing';
      case resolvedWithSequelae:
        return 'resolvedWithSequelae';
      case fatal:
        return 'fatal';
      case unknown:
        return 'unknown';
    }
  }

  String toJson() => toString();
  AdverseEventOutcome fromString(String str) {
    switch (str) {
      case 'resolved':
        return AdverseEventOutcome.resolved;
      case 'recovering':
        return AdverseEventOutcome.recovering;
      case 'ongoing':
        return AdverseEventOutcome.ongoing;
      case 'resolvedWithSequelae':
        return AdverseEventOutcome.resolvedWithSequelae;
      case 'fatal':
        return AdverseEventOutcome.fatal;
      case 'unknown':
        return AdverseEventOutcome.unknown;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  AdverseEventOutcome fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
