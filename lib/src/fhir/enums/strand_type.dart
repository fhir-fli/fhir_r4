// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Type for strand.
class StrandType {
  // Private constructor for internal use (like enum)
  StrandType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// StrandType values
  /// watson
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StrandType watson = StrandType._(
    'watson',
  );

  /// crick
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StrandType crick = StrandType._(
    'crick',
  );

  /// For instances where an Element is present but not value

  static final StrandType elementOnly = StrandType._('');

  /// List of all enum-like values
  static final List<StrandType> values = [
    watson,
    crick,
  ];

  /// Returns the enum value with an element attached
  StrandType withElement(Element? newElement) {
    return StrandType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [StrandType] from JSON.
  static StrandType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StrandType.elementOnly.withElement(element);
    }
    return StrandType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'StrandType.$fhirCode';
}
