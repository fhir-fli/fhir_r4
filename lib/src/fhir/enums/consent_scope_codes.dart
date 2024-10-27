// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes the four Consent scope codes.
class ConsentScopeCodes {
  // Private constructor for internal use (like enum)
  ConsentScopeCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ConsentScopeCodes values
  /// adr
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentScopeCodes adr = ConsentScopeCodes._(
    'adr',
  );

  /// research
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentScopeCodes research = ConsentScopeCodes._(
    'research',
  );

  /// patient_privacy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentScopeCodes patient_privacy = ConsentScopeCodes._(
    'patient-privacy',
  );

  /// treatment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentScopeCodes treatment = ConsentScopeCodes._(
    'treatment',
  );

  /// For instances where an Element is present but not value

  static final ConsentScopeCodes elementOnly = ConsentScopeCodes._('');

  /// List of all enum-like values
  static final List<ConsentScopeCodes> values = [
    adr,
    research,
    patient_privacy,
    treatment,
  ];

  /// Returns the enum value with an element attached
  ConsentScopeCodes withElement(Element? newElement) {
    return ConsentScopeCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ConsentScopeCodes] from JSON.
  static ConsentScopeCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentScopeCodes.elementOnly.withElement(element);
    }
    return ConsentScopeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
