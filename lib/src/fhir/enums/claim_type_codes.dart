// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes Claim Type codes.
class ClaimTypeCodes {
  // Private constructor for internal use (like enum)
  ClaimTypeCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ClaimTypeCodes values
  /// institutional
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ClaimTypeCodes institutional = ClaimTypeCodes._(
    'institutional',
  );

  /// oral
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ClaimTypeCodes oral = ClaimTypeCodes._(
    'oral',
  );

  /// pharmacy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ClaimTypeCodes pharmacy = ClaimTypeCodes._(
    'pharmacy',
  );

  /// professional
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ClaimTypeCodes professional = ClaimTypeCodes._(
    'professional',
  );

  /// vision
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ClaimTypeCodes vision = ClaimTypeCodes._(
    'vision',
  );

  /// For instances where an Element is present but not value

  static final ClaimTypeCodes elementOnly = ClaimTypeCodes._('');

  /// List of all enum-like values
  static final List<ClaimTypeCodes> values = [
    institutional,
    oral,
    pharmacy,
    professional,
    vision,
  ];

  /// Returns the enum value with an element attached
  ClaimTypeCodes withElement(Element? newElement) {
    return ClaimTypeCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ClaimTypeCodes] from JSON.
  static ClaimTypeCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClaimTypeCodes.elementOnly.withElement(element);
    }
    return ClaimTypeCodes._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
