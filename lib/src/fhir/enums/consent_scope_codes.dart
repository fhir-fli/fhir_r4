/// This value set includes the four Consent scope codes.
enum ConsentScopeCodes {
  /// Display: Advanced Care Directive
  /// Definition: Actions to be taken if they are no longer able to make decisions for themselves
  adr,

  /// Display: Research
  /// Definition: Consent to participate in research protocol and information sharing required
  research,

  /// Display: Privacy Consent
  /// Definition: Agreement to collect, access, use or disclose (share) information
  patient_privacy,

  /// Display: Treatment
  /// Definition: Consent to undergo a specific treatment
  treatment,
  ;

  @override
  String toString() {
    switch (this) {
      case adr:
        return 'adr';
      case research:
        return 'research';
      case patient_privacy:
        return 'patient-privacy';
      case treatment:
        return 'treatment';
    }
  }

  /// Returns a [String] from a [ConsentScopeCodes] enum.
  String toJson() => toString();

  /// Returns a [ConsentScopeCodes] from a [String] enum.
  static ConsentScopeCodes fromString(String str) {
    switch (str) {
      case 'adr':
        return ConsentScopeCodes.adr;
      case 'research':
        return ConsentScopeCodes.research;
      case 'patient-privacy':
        return ConsentScopeCodes.patient_privacy;
      case 'treatment':
        return ConsentScopeCodes.treatment;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ConsentScopeCodes] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ConsentScopeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
