// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes Claim Type codes.
enum ClaimTypeCodes {
  /// Display: Institutional
  /// Definition: Hospital, clinic and typically inpatient claims.
  institutional('institutional'),

  /// Display: Oral
  /// Definition: Dental, Denture and Hygiene claims.
  oral('oral'),

  /// Display: Pharmacy
  /// Definition: Pharmacy claims for goods and services.
  pharmacy('pharmacy'),

  /// Display: Professional
  /// Definition: Typically, outpatient claims from Physician, Psychological, Chiropractor, Physiotherapy, Speech Pathology, rehabilitative, consulting.
  professional('professional'),

  /// Display: Vision
  /// Definition: Vision claims for professional services and products such as glasses and contact lenses.
  vision('vision'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ClaimTypeCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ClaimTypeCodes] instances.
  static ClaimTypeCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClaimTypeCodes.elementOnly.withElement(element);
    }
    return ClaimTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ClaimTypeCodes withElement(Element? newElement) {
    return ClaimTypeCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
