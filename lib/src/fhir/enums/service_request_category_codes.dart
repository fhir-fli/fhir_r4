import 'package:fhir_r4/fhir_r4.dart';

/// An example value set of SNOMED CT concepts that can classify a requested service
enum ServiceRequestCategoryCodes {
  /// Display: Laboratory procedure
  /// Definition:
  value108252007('108252007'),

  /// Display: Imaging
  /// Definition:
  value363679005('363679005'),

  /// Display: Counselling
  /// Definition:
  value409063005('409063005'),

  /// Display: Education
  /// Definition:
  value409073007('409073007'),

  /// Display: Surgical procedure
  /// Definition:
  value387713003('387713003'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ServiceRequestCategoryCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ServiceRequestCategoryCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ServiceRequestCategoryCodes.elementOnly.withElement(element);
    }
    return ServiceRequestCategoryCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ServiceRequestCategoryCodes withElement(Element? newElement) {
    return ServiceRequestCategoryCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
