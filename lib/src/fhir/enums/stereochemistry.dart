// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The optical rotation type of a substance.
class Stereochemistry {
  // Private constructor for internal use (like enum)
  Stereochemistry._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Stereochemistry values
  /// ConstitutionalIsomer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Stereochemistry ConstitutionalIsomer = Stereochemistry._(
    'ConstitutionalIsomer',
  );

  /// Stereoisomer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Stereochemistry Stereoisomer = Stereochemistry._(
    'Stereoisomer',
  );

  /// Enantiomer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final Stereochemistry Enantiomer = Stereochemistry._(
    'Enantiomer',
  );

  /// For instances where an Element is present but not value

  static final Stereochemistry elementOnly = Stereochemistry._('');

  /// List of all enum-like values
  static final List<Stereochemistry> values = [
    ConstitutionalIsomer,
    Stereoisomer,
    Enantiomer,
  ];

  /// Returns the enum value with an element attached
  Stereochemistry withElement(Element? newElement) {
    return Stereochemistry._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [Stereochemistry] from JSON.
  static Stereochemistry fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return Stereochemistry.elementOnly.withElement(element);
    }
    return Stereochemistry.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
