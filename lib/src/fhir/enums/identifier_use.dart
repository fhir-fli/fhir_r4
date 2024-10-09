/// Identifies the purpose for this identifier, if known .
enum IdentifierUse {
  /// Display: Usual
  /// Definition: The identifier recommended for display and use in real-world interactions.
  usual,

  /// Display: Official
  /// Definition: The identifier considered to be most trusted for the identification of this item. Sometimes also known as "primary" and "main". The determination of "official" is subjective and implementation guides often provide additional guidelines for use.
  official,

  /// Display: Temp
  /// Definition: A temporary identifier.
  temp,

  /// Display: Secondary
  /// Definition: An identifier that was assigned in secondary use - it serves to identify the object in a relative context, but cannot be consistently assigned to the same object again in a different context.
  secondary,

  /// Display: Old
  /// Definition: The identifier id no longer considered valid, but may be relevant for search purposes.  E.g. Changes to identifier schemes, account merges, etc.
  old,
  ;

  @override
  String toString() {
    switch (this) {
      case usual:
        return 'usual';
      case official:
        return 'official';
      case temp:
        return 'temp';
      case secondary:
        return 'secondary';
      case old:
        return 'old';
    }
  }

  String toJson() => toString();
  static IdentifierUse fromString(String str) {
    switch (str) {
      case 'usual':
        return IdentifierUse.usual;
      case 'official':
        return IdentifierUse.official;
      case 'temp':
        return IdentifierUse.temp;
      case 'secondary':
        return IdentifierUse.secondary;
      case 'old':
        return IdentifierUse.old;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static IdentifierUse fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
