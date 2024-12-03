/// This file contains all the exceptions that can be thrown by the
/// primitive types.
class PrimitiveTypeFormatException<T> extends FormatException {
  /// The message that will be displayed when the exception is thrown.
  PrimitiveTypeFormatException(super.message);
}

/// This exception is thrown when a string cannot be parsed into a date.
class YamlFormatException<T> extends PrimitiveTypeFormatException<T> {
  /// The message that will be displayed when the exception is thrown.
  YamlFormatException(super.message);
}

/// This exception is thrown when a string cannot be parsed into a date.
class PrimitiveTypeArgumentError<T> extends ArgumentError {
  /// The message that will be displayed when the exception is thrown.
  PrimitiveTypeArgumentError(super.message);
}

/// This exception is thrown when a string cannot be parsed into a date.
class CannotBeConstructed<T> extends PrimitiveTypeArgumentError<T> {
  /// The message that will be displayed when the exception is thrown.
  CannotBeConstructed(super.message);
}

/// This exception is thrown when a string cannot be parsed into a date.
class UnequalPrecision<T> extends PrimitiveTypeArgumentError<T> {
  /// The message that will be displayed when the exception is thrown.
  UnequalPrecision(super.message);
}

/// This exception is thrown when a string cannot be parsed into a date.
class InvalidTypes<T> extends PrimitiveTypeArgumentError<T> {
  /// The message that will be displayed when the exception is thrown.
  InvalidTypes(super.message);
}
