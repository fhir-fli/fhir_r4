import 'package:json_annotation/json_annotation.dart';

/// The way in which a person authenticated a composition.
enum CompositionAttestationMode {
  /// Display: Personal
  /// Definition: The person authenticated the content in their personal capacity.
  @JsonValue('personal')
  personal,
  /// Display: Professional
  /// Definition: The person authenticated the content in their professional capacity.
  @JsonValue('professional')
  professional,
  /// Display: Legal
  /// Definition: The person authenticated the content and accepted legal responsibility for its content.
  @JsonValue('legal')
  legal,
  /// Display: Official
  /// Definition: The organization authenticated the content as consistent with their policies and procedures.
  @JsonValue('official')
  official,
;

@override
  String toString() {
      switch(this) {
        case personal: return 'personal';
        case professional: return 'professional';
        case legal: return 'legal';
        case official: return 'official';
      }
      }
String toJson() => toString();
  CompositionAttestationMode fromString(String str) {
    switch(str) {
      case 'personal': return CompositionAttestationMode.personal;
      case 'professional': return CompositionAttestationMode.professional;
      case 'legal': return CompositionAttestationMode.legal;
      case 'official': return CompositionAttestationMode.official;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 CompositionAttestationMode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}
