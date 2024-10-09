import 'package:json_annotation/json_annotation.dart';

/// Whether an operation parameter is an input or an output parameter.
enum OperationParameterUse {
  /// Display: In
  /// Definition: This is an input parameter.
  @JsonValue('in')
  in_,

  /// Display: Out
  /// Definition: This is an output parameter.
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
  static OperationParameterUse fromString(String str) {
    switch (str) {
      case 'in':
        return OperationParameterUse.in_;
      case 'out':
        return OperationParameterUse.out;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static OperationParameterUse fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
