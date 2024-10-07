import 'package:json_annotation/json_annotation.dart';

/// Whether an operation is a normal operation or a query.
enum OperationKind {
  /// Display: Operation
  /// Definition: This operation is invoked as an operation.
  @JsonValue('operation')
  operation,

  /// Display: Query
  /// Definition: This operation is a named query, invoked using the search mechanism.
  @JsonValue('query')
  query,
  ;

  @override
  String toString() {
    switch (this) {
      case operation:
        return 'operation';
      case query:
        return 'query';
    }
  }

  String toJson() => toString();
  OperationKind fromString(String str) {
    switch (str) {
      case 'operation':
        return OperationKind.operation;
      case 'query':
        return OperationKind.query;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  OperationKind fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
