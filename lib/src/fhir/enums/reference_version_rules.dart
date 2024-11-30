// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Whether a reference needs to be version specific or version independent, or whether either can be used.
class ReferenceVersionRules {
  // Private constructor for internal use (like enum)
  ReferenceVersionRules._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ReferenceVersionRules values
  /// either
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReferenceVersionRules either = ReferenceVersionRules._(
    'either',
  );

  /// independent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReferenceVersionRules independent = ReferenceVersionRules._(
    'independent',
  );

  /// specific
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReferenceVersionRules specific = ReferenceVersionRules._(
    'specific',
  );

  /// For instances where an Element is present but not value

  static final ReferenceVersionRules elementOnly = ReferenceVersionRules._('');

  /// List of all enum-like values
  static final List<ReferenceVersionRules> values = [
    either,
    independent,
    specific,
  ];

  /// Returns the enum value with an element attached
  ReferenceVersionRules withElement(Element? newElement) {
    return ReferenceVersionRules._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ReferenceVersionRules] from JSON.
  static ReferenceVersionRules fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReferenceVersionRules.elementOnly.withElement(element);
    }
    return ReferenceVersionRules._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
