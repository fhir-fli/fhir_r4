import 'package:fhir_r4/fhir_r4.dart';

/// The possible types of variables for exposures or outcomes (E.g. Dichotomous, Continuous, Descriptive).
enum VariableType {
  /// Display: Dichotomous
  /// Definition: The variable is dichotomous, such as present or absent.
  dichotomous('dichotomous'),

  /// Display: Continuous
  /// Definition: The variable is a continuous result such as a quantity.
  continuous('continuous'),

  /// Display: Descriptive
  /// Definition: The variable is described narratively rather than quantitatively.
  descriptive('descriptive'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const VariableType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static VariableType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return VariableType.elementOnly.withElement(element);
    }
    return VariableType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  VariableType withElement(Element? newElement) {
    return VariableType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
