// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of operator to use for assertion.
class AssertionOperatorType {
  // Private constructor for internal use (like enum)
  AssertionOperatorType._(this.fhirCode, {this.element});

  /// Factory constructor to create [AssertionOperatorType] from JSON.
  factory AssertionOperatorType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AssertionOperatorType.elementOnly.withElement(element);
    }
    return AssertionOperatorType._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AssertionOperatorType values
  /// equals
  static final AssertionOperatorType equals = AssertionOperatorType._(
    'equals',
  );

  /// notEquals
  static final AssertionOperatorType notEquals = AssertionOperatorType._(
    'notEquals',
  );

  /// in_
  static final AssertionOperatorType in_ = AssertionOperatorType._(
    'in',
  );

  /// notIn
  static final AssertionOperatorType notIn = AssertionOperatorType._(
    'notIn',
  );

  /// greaterThan
  static final AssertionOperatorType greaterThan = AssertionOperatorType._(
    'greaterThan',
  );

  /// lessThan
  static final AssertionOperatorType lessThan = AssertionOperatorType._(
    'lessThan',
  );

  /// empty
  static final AssertionOperatorType empty = AssertionOperatorType._(
    'empty',
  );

  /// notEmpty
  static final AssertionOperatorType notEmpty = AssertionOperatorType._(
    'notEmpty',
  );

  /// contains
  static final AssertionOperatorType contains = AssertionOperatorType._(
    'contains',
  );

  /// notContains
  static final AssertionOperatorType notContains = AssertionOperatorType._(
    'notContains',
  );

  /// eval
  static final AssertionOperatorType eval = AssertionOperatorType._(
    'eval',
  );

  /// For instances where an Element is present but not value

  static final AssertionOperatorType elementOnly = AssertionOperatorType._('');

  /// List of all enum-like values
  static final List<AssertionOperatorType> values = [
    equals,
    notEquals,
    in_,
    notIn,
    greaterThan,
    lessThan,
    empty,
    notEmpty,
    contains,
    notContains,
    eval,
  ];

  /// Returns the enum value with an element attached
  AssertionOperatorType withElement(Element? newElement) {
    return AssertionOperatorType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
