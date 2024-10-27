// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A code specifying the types of information being requested.
class EligibilityResponsePurpose {
  // Private constructor for internal use (like enum)
  EligibilityResponsePurpose._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// EligibilityResponsePurpose values
  /// auth_requirements
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EligibilityResponsePurpose auth_requirements =
      EligibilityResponsePurpose._(
    'auth-requirements',
  );

  /// benefits
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EligibilityResponsePurpose benefits =
      EligibilityResponsePurpose._(
    'benefits',
  );

  /// discovery
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EligibilityResponsePurpose discovery =
      EligibilityResponsePurpose._(
    'discovery',
  );

  /// validation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EligibilityResponsePurpose validation =
      EligibilityResponsePurpose._(
    'validation',
  );

  /// For instances where an Element is present but not value

  static final EligibilityResponsePurpose elementOnly =
      EligibilityResponsePurpose._('');

  /// List of all enum-like values
  static final List<EligibilityResponsePurpose> values = [
    auth_requirements,
    benefits,
    discovery,
    validation,
  ];

  /// Returns the enum value with an element attached
  EligibilityResponsePurpose withElement(Element? newElement) {
    return EligibilityResponsePurpose._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [EligibilityResponsePurpose] from JSON.
  static EligibilityResponsePurpose fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EligibilityResponsePurpose.elementOnly.withElement(element);
    }
    return EligibilityResponsePurpose.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
