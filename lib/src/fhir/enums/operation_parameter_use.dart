import 'package:fhir_r4/fhir_r4.dart';

/// Whether an operation parameter is an input or an output parameter.
enum OperationParameterUse {
  /// Display: In
  /// Definition: This is an input parameter.
  in_('in'),

  /// Display: Out
  /// Definition: This is an output parameter.
  out('out'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const OperationParameterUse(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static OperationParameterUse fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OperationParameterUse.elementOnly.withElement(element);
    }
    return OperationParameterUse.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  OperationParameterUse withElement(Element? newElement) {
    return OperationParameterUse.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
