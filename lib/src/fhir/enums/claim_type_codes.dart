/// This value set includes Claim Type codes.
enum ClaimTypeCodes {
  /// Display: Institutional
  /// Definition: Hospital, clinic and typically inpatient claims.
  institutional,

  /// Display: Oral
  /// Definition: Dental, Denture and Hygiene claims.
  oral,

  /// Display: Pharmacy
  /// Definition: Pharmacy claims for goods and services.
  pharmacy,

  /// Display: Professional
  /// Definition: Typically, outpatient claims from Physician, Psychological, Chiropractor, Physiotherapy, Speech Pathology, rehabilitative, consulting.
  professional,

  /// Display: Vision
  /// Definition: Vision claims for professional services and products such as glasses and contact lenses.
  vision,
  ;

  @override
  String toString() {
    switch (this) {
      case institutional:
        return 'institutional';
      case oral:
        return 'oral';
      case pharmacy:
        return 'pharmacy';
      case professional:
        return 'professional';
      case vision:
        return 'vision';
    }
  }

  /// Returns a [String] from a [ClaimTypeCodes] enum.
  String toJson() => toString();

  /// Returns a [ClaimTypeCodes] from a [String] enum.
  static ClaimTypeCodes fromString(String str) {
    switch (str) {
      case 'institutional':
        return ClaimTypeCodes.institutional;
      case 'oral':
        return ClaimTypeCodes.oral;
      case 'pharmacy':
        return ClaimTypeCodes.pharmacy;
      case 'professional':
        return ClaimTypeCodes.professional;
      case 'vision':
        return ClaimTypeCodes.vision;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ClaimTypeCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ClaimTypeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
