import 'package:json_annotation/json_annotation.dart';

/// A set of flags that defines how references are supported.
enum ReferenceHandlingPolicy {
  /// Display: Literal References
  /// Definition: The server supports and populates Literal references (i.e. using Reference.reference) where they are known (this code does not guarantee that all references are literal; see 'enforced').
  @JsonValue('literal')
  literal,

  /// Display: Logical References
  /// Definition: The server allows logical references (i.e. using Reference.identifier).
  @JsonValue('logical')
  logical,

  /// Display: Resolves References
  /// Definition: The server will attempt to resolve logical references to literal references - i.e. converting Reference.identifier to Reference.reference (if resolution fails, the server may still accept resources; see logical).
  @JsonValue('resolves')
  resolves,

  /// Display: Reference Integrity Enforced
  /// Definition: The server enforces that references have integrity - e.g. it ensures that references can always be resolved. This is typically the case for clinical record systems, but often not the case for middleware/proxy systems.
  @JsonValue('enforced')
  enforced,

  /// Display: Local References Only
  /// Definition: The server does not support references that point to other servers.
  @JsonValue('local')
  local,
  ;

  @override
  String toString() {
    switch (this) {
      case literal:
        return 'literal';
      case logical:
        return 'logical';
      case resolves:
        return 'resolves';
      case enforced:
        return 'enforced';
      case local:
        return 'local';
    }
  }

  String toJson() => toString();
  static ReferenceHandlingPolicy fromString(String str) {
    switch (str) {
      case 'literal':
        return ReferenceHandlingPolicy.literal;
      case 'logical':
        return ReferenceHandlingPolicy.logical;
      case 'resolves':
        return ReferenceHandlingPolicy.resolves;
      case 'enforced':
        return ReferenceHandlingPolicy.enforced;
      case 'local':
        return ReferenceHandlingPolicy.local;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ReferenceHandlingPolicy fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
