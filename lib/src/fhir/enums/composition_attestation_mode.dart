// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The way in which a person authenticated a composition.
class CompositionAttestationMode {
  // Private constructor for internal use (like enum)
  CompositionAttestationMode._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// CompositionAttestationMode values
  /// personal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CompositionAttestationMode personal =
      CompositionAttestationMode._(
    'personal',
  );

  /// professional
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CompositionAttestationMode professional =
      CompositionAttestationMode._(
    'professional',
  );

  /// legal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CompositionAttestationMode legal = CompositionAttestationMode._(
    'legal',
  );

  /// official
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CompositionAttestationMode official =
      CompositionAttestationMode._(
    'official',
  );

  /// For instances where an Element is present but not value

  static final CompositionAttestationMode elementOnly =
      CompositionAttestationMode._('');

  /// List of all enum-like values
  static final List<CompositionAttestationMode> values = [
    personal,
    professional,
    legal,
    official,
  ];

  /// Returns the enum value with an element attached
  CompositionAttestationMode withElement(Element? newElement) {
    return CompositionAttestationMode._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [CompositionAttestationMode] from JSON.
  static CompositionAttestationMode fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CompositionAttestationMode.elementOnly.withElement(element);
    }
    return CompositionAttestationMode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
