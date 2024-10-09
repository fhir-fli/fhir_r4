import 'package:json_annotation/json_annotation.dart';

/// This value set includes the four Consent scope codes.
enum ConsentScopeCodes {
  /// Display: Advanced Care Directive
  /// Definition: Actions to be taken if they are no longer able to make decisions for themselves
  @JsonValue('adr')
  adr,

  /// Display: Research
  /// Definition: Consent to participate in research protocol and information sharing required
  @JsonValue('research')
  research,

  /// Display: Privacy Consent
  /// Definition: Agreement to collect, access, use or disclose (share) information
  @JsonValue('patient-privacy')
  patient_privacy,

  /// Display: Treatment
  /// Definition: Consent to undergo a specific treatment
  @JsonValue('treatment')
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

  String toJson() => toString();
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

  static ConsentScopeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
