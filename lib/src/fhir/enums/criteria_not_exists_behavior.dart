import 'package:fhir_r4/fhir_r4.dart';

/// Behavior a server can exhibit when a criteria state does not exist (e.g., state prior to a create or after a delete).
enum CriteriaNotExistsBehavior {
  /// Display: test passes
  /// Definition: The requested conditional statement will pass if a matching state does not exist (e.g., previous state during create).
  test_passes('test-passes'),

  /// Display: test fails
  /// Definition: The requested conditional statement will fail if a matching state does not exist (e.g., previous state during create).
  test_fails('test-fails'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const CriteriaNotExistsBehavior(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static CriteriaNotExistsBehavior fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CriteriaNotExistsBehavior.elementOnly.withElement(element);
    }
    return CriteriaNotExistsBehavior.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  CriteriaNotExistsBehavior withElement(Element? newElement) {
    return CriteriaNotExistsBehavior.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
