import 'package:json_annotation/json_annotation.dart';

/// This value set includes Claim Type codes.
enum ClaimTypeCodes {
  /// Display: Institutional
  /// Definition: Hospital, clinic and typically inpatient claims.
  @JsonValue('institutional')
  institutional,

  /// Display: Oral
  /// Definition: Dental, Denture and Hygiene claims.
  @JsonValue('oral')
  oral,

  /// Display: Pharmacy
  /// Definition: Pharmacy claims for goods and services.
  @JsonValue('pharmacy')
  pharmacy,

  /// Display: Professional
  /// Definition: Typically, outpatient claims from Physician, Psychological, Chiropractor, Physiotherapy, Speech Pathology, rehabilitative, consulting.
  @JsonValue('professional')
  professional,

  /// Display: Vision
  /// Definition: Vision claims for professional services and products such as glasses and contact lenses.
  @JsonValue('vision')
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

  String toJson() => toString();
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

  static ClaimTypeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
