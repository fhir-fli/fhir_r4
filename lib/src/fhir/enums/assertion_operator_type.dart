// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The type of operator to use for assertion.
@collection
class AssertionOperatorType {
  /// Constructor for internal use (like enum)
  AssertionOperatorType({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AssertionOperatorType values
  /// equals
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionOperatorType equals = AssertionOperatorType(
    fhirCode: 'equals',
  );

  /// notEquals
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionOperatorType notEquals = AssertionOperatorType(
    fhirCode: 'notEquals',
  );

  /// in_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionOperatorType in_ = AssertionOperatorType(
    fhirCode: 'in',
  );

  /// notIn
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionOperatorType notIn = AssertionOperatorType(
    fhirCode: 'notIn',
  );

  /// greaterThan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionOperatorType greaterThan = AssertionOperatorType(
    fhirCode: 'greaterThan',
  );

  /// lessThan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionOperatorType lessThan = AssertionOperatorType(
    fhirCode: 'lessThan',
  );

  /// empty
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionOperatorType empty = AssertionOperatorType(
    fhirCode: 'empty',
  );

  /// notEmpty
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionOperatorType notEmpty = AssertionOperatorType(
    fhirCode: 'notEmpty',
  );

  /// contains
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionOperatorType contains = AssertionOperatorType(
    fhirCode: 'contains',
  );

  /// notContains
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionOperatorType notContains = AssertionOperatorType(
    fhirCode: 'notContains',
  );

  /// eval
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionOperatorType eval = AssertionOperatorType(
    fhirCode: 'eval',
  );

  /// For instances where an Element is present but not value

  static final AssertionOperatorType elementOnly = AssertionOperatorType();

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
    return AssertionOperatorType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [AssertionOperatorType] from JSON.
  static AssertionOperatorType fromJson(Map<String, dynamic> json) {
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AssertionOperatorType.$fhirCode';
}
