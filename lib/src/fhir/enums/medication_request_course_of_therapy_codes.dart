import 'package:fhir_r4/fhir_r4.dart';

/// MedicationRequest Course of Therapy Codes
enum MedicationRequestCourseOfTherapyCodes {
  /// Display: Continuous long term therapy
  /// Definition: A medication which is expected to be continued beyond the present order and which the patient should be assumed to be taking unless explicitly stopped.
  continuous('continuous'),

  /// Display: Short course (acute) therapy
  /// Definition: A medication which the patient is only expected to consume for the duration of the current order and which is not expected to be renewed.
  acute('acute'),

  /// Display: Seasonal
  /// Definition: A medication which is expected to be used on a part time basis at certain times of the year
  seasonal('seasonal'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const MedicationRequestCourseOfTherapyCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static MedicationRequestCourseOfTherapyCodes fromJson(
      Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationRequestCourseOfTherapyCodes.elementOnly
          .withElement(element);
    }
    return MedicationRequestCourseOfTherapyCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  MedicationRequestCourseOfTherapyCodes withElement(Element? newElement) {
    return MedicationRequestCourseOfTherapyCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
