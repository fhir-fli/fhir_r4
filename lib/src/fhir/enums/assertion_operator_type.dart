// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The type of operator to use for assertion.
@Entity()
class AssertionOperatorType extends FhirCode {
  /// Factory constructor to create [AssertionOperatorType] from JSON.
  factory AssertionOperatorType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AssertionOperatorType.elementOnly(element);
    }
    if (values.contains(value)) {
      return AssertionOperatorType._(value, element);
    }
    throw ArgumentError(
      'AssertionOperatorType.fromJson: JSON value is not a valid value',
    );
  }

  /// equals
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AssertionOperatorType.equals([this.element])
      : dbValue = 'equals',
        super('equals', element);

  /// notEquals
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AssertionOperatorType.notEquals([this.element])
      : dbValue = 'notEquals',
        super('notEquals', element);

  /// in_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AssertionOperatorType.in_([this.element])
      : dbValue = 'in',
        super('in', element);

  /// notIn
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AssertionOperatorType.notIn([this.element])
      : dbValue = 'notIn',
        super('notIn', element);

  /// greaterThan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AssertionOperatorType.greaterThan([this.element])
      : dbValue = 'greaterThan',
        super('greaterThan', element);

  /// lessThan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AssertionOperatorType.lessThan([this.element])
      : dbValue = 'lessThan',
        super('lessThan', element);

  /// empty
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AssertionOperatorType.empty([this.element])
      : dbValue = 'empty',
        super('empty', element);

  /// notEmpty
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AssertionOperatorType.notEmpty([this.element])
      : dbValue = 'notEmpty',
        super('notEmpty', element);

  /// contains
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AssertionOperatorType.contains([this.element])
      : dbValue = 'contains',
        super('contains', element);

  /// notContains
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AssertionOperatorType.notContains([this.element])
      : dbValue = 'notContains',
        super('notContains', element);

  /// eval
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AssertionOperatorType.eval([this.element])
      : dbValue = 'eval',
        super('eval', element);

  /// For instances where an Element is present but not value

  AssertionOperatorType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  AssertionOperatorType._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'equals',
    'notEquals',
    'in',
    'notIn',
    'greaterThan',
    'lessThan',
    'empty',
    'notEmpty',
    'contains',
    'notContains',
    'eval',
  ];

  /// Returns the enum value with an element attached
  AssertionOperatorType withElement(Element? newElement) {
    return AssertionOperatorType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AssertionOperatorType.$value';
}
