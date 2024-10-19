// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Example value set for investigation type.
class InvestigationType {
  // Private constructor for internal use (like enum)
  InvestigationType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// InvestigationType values
  /// value271336007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InvestigationType value271336007 = InvestigationType._(
    '271336007',
  );

  /// value160237006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InvestigationType value160237006 = InvestigationType._(
    '160237006',
  );

  /// For instances where an Element is present but not value

  static final InvestigationType elementOnly = InvestigationType._('');

  /// List of all enum-like values
  static final List<InvestigationType> values = [
    value271336007,
    value160237006,
  ];

  /// Returns the enum value with an element attached
  InvestigationType withElement(Element? newElement) {
    return InvestigationType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [InvestigationType] from JSON.
  static InvestigationType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InvestigationType.elementOnly.withElement(element);
    }
    return InvestigationType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'InvestigationType.$fhirCode';
}
