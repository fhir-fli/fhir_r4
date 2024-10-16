import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes example Diagnosis Related Group codes.
enum ExampleDiagnosisRelatedGroupCodes {
  /// Display: Normal Vaginal Delivery
  /// Definition: Normal Vaginal Delivery.
  value100('100'),

  /// Display: Appendectomy - uncomplicated
  /// Definition: Appendectomy without rupture or other complications.
  value101('101'),

  /// Display: Tooth abscess
  /// Definition: Emergency department treatment of a tooth abscess.
  value300('300'),

  /// Display: Head trauma - concussion
  /// Definition: Head trauma - concussion.
  value400('400'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ExampleDiagnosisRelatedGroupCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ExampleDiagnosisRelatedGroupCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleDiagnosisRelatedGroupCodes.elementOnly.withElement(element);
    }
    return ExampleDiagnosisRelatedGroupCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ExampleDiagnosisRelatedGroupCodes withElement(Element? newElement) {
    return ExampleDiagnosisRelatedGroupCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
