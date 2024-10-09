import 'package:json_annotation/json_annotation.dart';

/// This value set includes the financial processing priority codes.
enum ProcessPriorityCodes {
  /// Display: Immediate
  /// Definition: Immediately in real time.
  @JsonValue('stat')
  stat,

  /// Display: Normal
  /// Definition: With best effort.
  @JsonValue('normal')
  normal,

  /// Display: Deferred
  /// Definition: Later, when possible.
  @JsonValue('deferred')
  deferred_,
  ;

  @override
  String toString() {
    switch (this) {
      case stat:
        return 'stat';
      case normal:
        return 'normal';
      case deferred_:
        return 'deferred';
    }
  }

  String toJson() => toString();
  static ProcessPriorityCodes fromString(String str) {
    switch (str) {
      case 'stat':
        return ProcessPriorityCodes.stat;
      case 'normal':
        return ProcessPriorityCodes.normal;
      case 'deferred':
        return ProcessPriorityCodes.deferred_;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ProcessPriorityCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
