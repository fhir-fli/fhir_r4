/// The way in which a person authenticated a composition.
enum CompositionAttestationMode {
  /// Display: Personal
  /// Definition: The person authenticated the content in their personal capacity.
  personal,

  /// Display: Professional
  /// Definition: The person authenticated the content in their professional capacity.
  professional,

  /// Display: Legal
  /// Definition: The person authenticated the content and accepted legal responsibility for its content.
  legal,

  /// Display: Official
  /// Definition: The organization authenticated the content as consistent with their policies and procedures.
  official,
  ;

  @override
  String toString() {
    switch (this) {
      case personal:
        return 'personal';
      case professional:
        return 'professional';
      case legal:
        return 'legal';
      case official:
        return 'official';
    }
  }

  /// Returns a [String] from a [CompositionAttestationMode] enum.
  String toJson() => toString();

  /// Returns a [CompositionAttestationMode] from a [String] enum.
  static CompositionAttestationMode fromString(String str) {
    switch (str) {
      case 'personal':
        return CompositionAttestationMode.personal;
      case 'professional':
        return CompositionAttestationMode.professional;
      case 'legal':
        return CompositionAttestationMode.legal;
      case 'official':
        return CompositionAttestationMode.official;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [CompositionAttestationMode] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static CompositionAttestationMode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
