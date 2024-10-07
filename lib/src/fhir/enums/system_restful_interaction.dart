import 'package:json_annotation/json_annotation.dart';

/// Operations supported by REST at the system level.
enum SystemRestfulInteraction {
  @JsonValue('transaction')
  transaction,
  @JsonValue('batch')
  batch,
  @JsonValue('search-system')
  search_system,
  @JsonValue('history-system')
  history_system,
  ;

  @override
  String toString() {
    switch (this) {
      case transaction:
        return 'transaction';
      case batch:
        return 'batch';
      case search_system:
        return 'search-system';
      case history_system:
        return 'history-system';
    }
  }

  String toJson() => toString();
  SystemRestfulInteraction fromString(String str) {
    switch (str) {
      case 'transaction':
        return SystemRestfulInteraction.transaction;
      case 'batch':
        return SystemRestfulInteraction.batch;
      case 'search-system':
        return SystemRestfulInteraction.search_system;
      case 'history-system':
        return SystemRestfulInteraction.history_system;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  SystemRestfulInteraction fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
