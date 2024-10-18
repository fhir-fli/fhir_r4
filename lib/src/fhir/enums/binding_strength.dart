// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Indication of the degree of conformance expectations associated with a binding.
enum BindingStrength {
  /// Display: Required
  /// Definition: To be conformant, the concept in this element SHALL be from the specified value set.
  required_('required'),

  /// Display: Extensible
  /// Definition: To be conformant, the concept in this element SHALL be from the specified value set if any of the codes within the value set can apply to the concept being communicated. If the value set does not cover the concept (based on human review), alternate codings (or, data type allowing, text) may be included instead.
  extensible('extensible'),

  /// Display: Preferred
  /// Definition: Instances are encouraged to draw from the specified codes for interoperability purposes but are not required to do so to be considered conformant.
  preferred('preferred'),

  /// Display: Example
  /// Definition: Instances are not expected or even encouraged to draw from the specified value set. The value set merely provides examples of the types of concepts intended to be included.
  example('example'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const BindingStrength(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [BindingStrength] instances.
  static BindingStrength fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BindingStrength.elementOnly.withElement(element);
    }
    return BindingStrength.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  BindingStrength withElement(Element? newElement) {
    return BindingStrength.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
