// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Defines how a compartment rule is used.
enum GraphCompartmentUse {
  /// Display: Condition
  /// Definition: This compartment rule is a condition for whether the rule applies.
  condition('condition'),

  /// Display: Requirement
  /// Definition: This compartment rule is enforced on any relationships that meet the conditions.
  requirement('requirement'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const GraphCompartmentUse(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [GraphCompartmentUse] instances.
  static GraphCompartmentUse fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GraphCompartmentUse.elementOnly.withElement(element);
    }
    return GraphCompartmentUse.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  GraphCompartmentUse withElement(Element? newElement) {
    return GraphCompartmentUse.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
