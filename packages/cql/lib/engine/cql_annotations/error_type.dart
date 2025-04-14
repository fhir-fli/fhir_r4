/// Enum representing different types of errors
enum ErrorType {
  environment,
  syntax,
  include,
  semantic,
  internal,
}

extension ErrorTypeExtension on ErrorType {
  String toJson() {
    switch (this) {
      case ErrorType.environment:
        return 'environment';
      case ErrorType.syntax:
        return 'syntax';
      case ErrorType.include:
        return 'include';
      case ErrorType.semantic:
        return 'semantic';
      case ErrorType.internal:
        return 'internal';
    }
  }

  static ErrorType fromJson(String json) {
    switch (json) {
      case 'environment':
        return ErrorType.environment;
      case 'syntax':
        return ErrorType.syntax;
      case 'include':
        return ErrorType.include;
      case 'semantic':
        return ErrorType.semantic;
      case 'internal':
        return ErrorType.internal;
      default:
        throw ArgumentError.value(json, 'json', 'Invalid ErrorType value.');
    }
  }
}
