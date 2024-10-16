import 'package:fhir_r4/fhir_r4.dart';

/// The type of operator to use for assertion.
enum AssertionOperatorType {
  /// Display: equals
  /// Definition: Default value. Equals comparison.
  equals('equals'),

  /// Display: notEquals
  /// Definition: Not equals comparison.
  notEquals('notEquals'),

  /// Display: in
  /// Definition: Compare value within a known set of values.
  in_('in'),

  /// Display: notIn
  /// Definition: Compare value not within a known set of values.
  notIn('notIn'),

  /// Display: greaterThan
  /// Definition: Compare value to be greater than a known value.
  greaterThan('greaterThan'),

  /// Display: lessThan
  /// Definition: Compare value to be less than a known value.
  lessThan('lessThan'),

  /// Display: empty
  /// Definition: Compare value is empty.
  empty('empty'),

  /// Display: notEmpty
  /// Definition: Compare value is not empty.
  notEmpty('notEmpty'),

  /// Display: contains
  /// Definition: Compare value string contains a known value.
  contains('contains'),

  /// Display: notContains
  /// Definition: Compare value string does not contain a known value.
  notContains('notContains'),

  /// Display: evaluate
  /// Definition: Evaluate the FHIRPath expression as a boolean condition.
  eval('eval'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const AssertionOperatorType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static AssertionOperatorType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AssertionOperatorType.elementOnly.withElement(element);
    }
    return AssertionOperatorType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  AssertionOperatorType withElement(Element? newElement) {
    return AssertionOperatorType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
