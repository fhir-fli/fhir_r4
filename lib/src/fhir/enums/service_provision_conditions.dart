// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ServiceProvisionConditions(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ServiceProvisionConditions] instances.
  static ServiceProvisionConditions fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ServiceProvisionConditions.elementOnly.withElement(element);
    }
    return ServiceProvisionConditions.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ServiceProvisionConditions withElement(Element? newElement) {
    return ServiceProvisionConditions.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
