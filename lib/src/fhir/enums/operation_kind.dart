/// Whether an operation is a normal operation or a query.
enum OperationKind {
  /// Display: Operation
  /// Definition: This operation is invoked as an operation.
  operation,

  /// Display: Query
  /// Definition: This operation is a named query, invoked using the search mechanism.
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

  /// Returns a [String] from a [OperationKind] enum.
  String toJson() => toString();

  /// Returns a [OperationKind] from a [String] enum.
  static OperationKind fromString(String str) {
    switch (str) {
      case 'operation':
        return OperationKind.operation;
      case 'query':
        return OperationKind.query;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [OperationKind] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static OperationKind fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
