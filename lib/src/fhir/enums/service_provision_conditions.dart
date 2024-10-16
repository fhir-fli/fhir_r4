import 'package:fhir_r4/fhir_r4.dart';

/// The code(s) that detail the conditions under which the healthcare service is available/offered.
enum ServiceProvisionConditions {
  /// Display: Free
  /// Definition: This service is available for no patient cost.
  free('free'),

  /// Display: Discounts Available
  /// Definition: There are discounts available on this service for qualifying patients.
  disc('disc'),

  /// Display: Fees apply
  /// Definition: Fees apply for this service.
  cost('cost'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ServiceProvisionConditions(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ServiceProvisionConditions fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ServiceProvisionConditions.elementOnly.withElement(element);
    }
    return ServiceProvisionConditions.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ServiceProvisionConditions withElement(Element? newElement) {
    return ServiceProvisionConditions.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
