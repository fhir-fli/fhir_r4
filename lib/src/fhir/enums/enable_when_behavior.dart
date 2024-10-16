import 'package:fhir_r4/fhir_r4.dart';

/// Controls how multiple enableWhen values are interpreted - whether all or any must be true.
enum EnableWhenBehavior {
  /// Display: All
  /// Definition: Enable the question when all the enableWhen criteria are satisfied.
  all('all'),

  /// Display: Any
  /// Definition: Enable the question when any of the enableWhen criteria are satisfied.
  any('any'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const EnableWhenBehavior(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static EnableWhenBehavior fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EnableWhenBehavior.elementOnly.withElement(element);
    }
    return EnableWhenBehavior.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  EnableWhenBehavior withElement(Element? newElement) {
    return EnableWhenBehavior.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
