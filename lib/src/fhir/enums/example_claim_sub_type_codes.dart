// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Claim SubType codes which are used to distinguish the claim types for example within type institutional there may be subtypes for emergency services, bed stay and transportation.
class ExampleClaimSubTypeCodes {
  // Private constructor for internal use (like enum)
  ExampleClaimSubTypeCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ExampleClaimSubTypeCodes values
  /// ortho
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleClaimSubTypeCodes ortho = ExampleClaimSubTypeCodes._(
    'ortho',
  );

  /// emergency
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleClaimSubTypeCodes emergency = ExampleClaimSubTypeCodes._(
    'emergency',
  );

  /// For instances where an Element is present but not value

  static final ExampleClaimSubTypeCodes elementOnly =
      ExampleClaimSubTypeCodes._('');

  /// List of all enum-like values
  static final List<ExampleClaimSubTypeCodes> values = [
    ortho,
    emergency,
  ];

  /// Returns the enum value with an element attached
  ExampleClaimSubTypeCodes withElement(Element? newElement) {
    return ExampleClaimSubTypeCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ExampleClaimSubTypeCodes] from JSON.
  static ExampleClaimSubTypeCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleClaimSubTypeCodes.elementOnly.withElement(element);
    }
    return ExampleClaimSubTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ExampleClaimSubTypeCodes.$fhirCode';
}
