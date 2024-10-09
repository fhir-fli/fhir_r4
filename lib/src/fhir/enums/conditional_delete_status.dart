import 'package:json_annotation/json_annotation.dart';

/// A code that indicates how the server supports conditional delete.
enum ConditionalDeleteStatus {
  /// Display: Not Supported
  /// Definition: No support for conditional deletes.
  @JsonValue('not-supported')
  not_supported,

  /// Display: Single Deletes Supported
  /// Definition: Conditional deletes are supported, but only single resources at a time.
  @JsonValue('single')
  single,

  /// Display: Multiple Deletes Supported
  /// Definition: Conditional deletes are supported, and multiple resources can be deleted in a single interaction.
  @JsonValue('multiple')
  multiple,
  ;

  @override
  String toString() {
    switch (this) {
      case not_supported:
        return 'not-supported';
      case single:
        return 'single';
      case multiple:
        return 'multiple';
    }
  }

  String toJson() => toString();
  static ConditionalDeleteStatus fromString(String str) {
    switch (str) {
      case 'not-supported':
        return ConditionalDeleteStatus.not_supported;
      case 'single':
        return ConditionalDeleteStatus.single;
      case 'multiple':
        return ConditionalDeleteStatus.multiple;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ConditionalDeleteStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
