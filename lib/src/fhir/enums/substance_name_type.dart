// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of a name given to a substance.
class SubstanceNameType {
  // Private constructor for internal use (like enum)
  SubstanceNameType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SubstanceNameType values
  /// Systematic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceNameType Systematic = SubstanceNameType._(
    'Systematic',
  );

  /// Scientific
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceNameType Scientific = SubstanceNameType._(
    'Scientific',
  );

  /// Brand
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceNameType Brand = SubstanceNameType._(
    'Brand',
  );

  /// For instances where an Element is present but not value

  static final SubstanceNameType elementOnly = SubstanceNameType._('');

  /// List of all enum-like values
  static final List<SubstanceNameType> values = [
    Systematic,
    Scientific,
    Brand,
  ];

  /// Returns the enum value with an element attached
  SubstanceNameType withElement(Element? newElement) {
    return SubstanceNameType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SubstanceNameType] from JSON.
  static SubstanceNameType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceNameType.elementOnly.withElement(element);
    }
    return SubstanceNameType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
