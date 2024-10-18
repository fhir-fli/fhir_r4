// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const AssertionOperatorType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [AssertionOperatorType] instances.
  static AssertionOperatorType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AssertionOperatorType.elementOnly.withElement(element);
    }
    return AssertionOperatorType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  AssertionOperatorType withElement(Element? newElement) {
    return AssertionOperatorType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
