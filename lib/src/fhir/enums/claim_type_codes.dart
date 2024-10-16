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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ClaimTypeCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ClaimTypeCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClaimTypeCodes.elementOnly.withElement(element);
    }
    return ClaimTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ClaimTypeCodes withElement(Element? newElement) {
    return ClaimTypeCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
