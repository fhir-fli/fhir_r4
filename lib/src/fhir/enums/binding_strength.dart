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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const BindingStrength(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static BindingStrength fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BindingStrength.elementOnly.withElement(element);
    }
    return BindingStrength.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  BindingStrength withElement(Element? newElement) {
    return BindingStrength.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
