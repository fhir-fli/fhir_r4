import 'package:fhir_r4/fhir_r4.dart';

/// SHALL applications comply with this constraint?
enum ConstraintSeverity {
  /// Display: Error
  /// Definition: If the constraint is violated, the resource is not conformant.
  error('error'),

  /// Display: Warning
  /// Definition: If the constraint is violated, the resource is conformant, but it is not necessarily following best practice.
  warning('warning'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ConstraintSeverity(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ConstraintSeverity fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConstraintSeverity.elementOnly.withElement(element);
    }
    return ConstraintSeverity.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ConstraintSeverity withElement(Element? newElement) {
    return ConstraintSeverity.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
