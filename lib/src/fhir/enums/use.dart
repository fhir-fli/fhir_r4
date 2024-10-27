// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The purpose of the Claim: predetermination, preauthorization, claim.
class Use {
  // Private constructor for internal use (like enum)
  Use._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Use values
  /// claim
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Use claim = Use._(
    'claim',
  );

  /// preauthorization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Use preauthorization = Use._(
    'preauthorization',
  );

  /// predetermination
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Use predetermination = Use._(
    'predetermination',
  );

  /// For instances where an Element is present but not value

  static final Use elementOnly = Use._('');

  /// List of all enum-like values
  static final List<Use> values = [
    claim,
    preauthorization,
    predetermination,
  ];

  /// Returns the enum value with an element attached
  Use withElement(Element? newElement) {
    return Use._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [Use] from JSON.
  static Use fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return Use.elementOnly.withElement(element);
    }
    return Use.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
