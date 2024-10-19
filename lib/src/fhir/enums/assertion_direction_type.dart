// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The type of direction to use for assertion.
@collection
class AssertionDirectionType {
  /// Constructor for internal use (like enum)
  AssertionDirectionType({this.fhirCode, this.element})
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

  /// AssertionDirectionType values
  /// response
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionDirectionType response = AssertionDirectionType(
    fhirCode: 'response',
  );

  /// request
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionDirectionType request = AssertionDirectionType(
    fhirCode: 'request',
  );

  /// For instances where an Element is present but not value

  static final AssertionDirectionType elementOnly = AssertionDirectionType();

  /// List of all enum-like values
  static final List<AssertionDirectionType> values = [
    response,
    request,
  ];

  /// Returns the enum value with an element attached
  AssertionDirectionType withElement(Element? newElement) {
    return AssertionDirectionType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [AssertionDirectionType] from JSON.
  static AssertionDirectionType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AssertionDirectionType.elementOnly.withElement(element);
    }
    return AssertionDirectionType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AssertionDirectionType.$fhirCode';
}
