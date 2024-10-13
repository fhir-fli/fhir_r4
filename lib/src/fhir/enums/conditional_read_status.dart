/// A code that indicates how the server supports conditional read.
enum ConditionalReadStatus {
  /// Display: Not Supported
  /// Definition: No support for conditional reads.
  not_supported,

  /// Display: If-Modified-Since
  /// Definition: Conditional reads are supported, but only with the If-Modified-Since HTTP Header.
  modified_since,

  /// Display: If-None-Match
  /// Definition: Conditional reads are supported, but only with the If-None-Match HTTP Header.
  not_match,

  /// Display: Full Support
  /// Definition: Conditional reads are supported, with both If-Modified-Since and If-None-Match HTTP Headers.
  full_support,
  ;

  @override
  String toString() {
    switch (this) {
      case not_supported:
        return 'not-supported';
      case modified_since:
        return 'modified-since';
      case not_match:
        return 'not-match';
      case full_support:
        return 'full-support';
    }
  }

  /// Returns a [String] from a [ConditionalReadStatus] enum.
  String toJson() => toString();

  /// Returns a [ConditionalReadStatus] from a [String] enum.
  static ConditionalReadStatus fromString(String str) {
    switch (str) {
      case 'not-supported':
        return ConditionalReadStatus.not_supported;
      case 'modified-since':
        return ConditionalReadStatus.modified_since;
      case 'not-match':
        return ConditionalReadStatus.not_match;
      case 'full-support':
        return ConditionalReadStatus.full_support;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ConditionalReadStatus] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ConditionalReadStatus fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
