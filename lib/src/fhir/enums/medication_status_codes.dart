import 'package:fhir_r4/fhir_r4.dart';

/// Medication Status Codes
enum MedicationStatusCodes {
  /// Display: Active
  /// Definition: The medication is available for use.
  active('active'),

  /// Display: Inactive
  /// Definition: The medication is not available for use.
  inactive('inactive'),

  /// Display: Entered in Error
  /// Definition: The medication was entered in error.
  entered_in_error('entered-in-error'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const MedicationStatusCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static MedicationStatusCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationStatusCodes.elementOnly.withElement(element);
    }
    return MedicationStatusCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  MedicationStatusCodes withElement(Element? newElement) {
    return MedicationStatusCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
