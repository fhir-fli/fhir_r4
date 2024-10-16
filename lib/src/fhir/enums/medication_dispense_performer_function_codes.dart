import 'package:fhir_r4/fhir_r4.dart';

/// MedicationDispense Performer Function Codes
enum MedicationDispensePerformerFunctionCodes {
  /// Display: Data Enterer
  /// Definition: Recorded the details of the request
  dataenterer('dataenterer'),

  /// Display: Packager
  /// Definition: Prepared the medication.
  packager('packager'),

  /// Display: Checker
  /// Definition: Performed initial quality assurance on the prepared medication
  checker('checker'),

  /// Display: Final Checker
  /// Definition: Performed the final quality assurance on the prepared medication against the request. Typically, this is a pharmacist function.
  finalchecker('finalchecker'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const MedicationDispensePerformerFunctionCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static MedicationDispensePerformerFunctionCodes fromJson(
      Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationDispensePerformerFunctionCodes.elementOnly
          .withElement(element);
    }
    return MedicationDispensePerformerFunctionCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  MedicationDispensePerformerFunctionCodes withElement(Element? newElement) {
    return MedicationDispensePerformerFunctionCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
