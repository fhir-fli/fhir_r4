// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of direction to use for assertion.
class AssertionDirectionType {
  // Private constructor for internal use (like enum)
  AssertionDirectionType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AssertionDirectionType values
  /// response
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionDirectionType response = AssertionDirectionType._(
    'response',
  );

  /// request
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AssertionDirectionType request = AssertionDirectionType._(
    'request',
  );

  /// For instances where an Element is present but not value

  static final AssertionDirectionType elementOnly =
      AssertionDirectionType._('');

  /// List of all enum-like values
  static final List<AssertionDirectionType> values = [
    response,
    request,
  ];

  /// Returns the enum value with an element attached
  AssertionDirectionType withElement(Element? newElement) {
    return AssertionDirectionType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
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
    return AssertionDirectionType._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
