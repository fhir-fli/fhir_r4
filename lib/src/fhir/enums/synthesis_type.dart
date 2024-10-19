// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Types of combining results from a body of evidence (eg. summary data meta-analysis).
class SynthesisType {
  // Private constructor for internal use (like enum)
  SynthesisType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SynthesisType values
  /// std_MA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SynthesisType std_MA = SynthesisType._(
    'std-MA',
  );

  /// IPD_MA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SynthesisType IPD_MA = SynthesisType._(
    'IPD-MA',
  );

  /// indirect_NMA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SynthesisType indirect_NMA = SynthesisType._(
    'indirect-NMA',
  );

  /// combined_NMA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SynthesisType combined_NMA = SynthesisType._(
    'combined-NMA',
  );

  /// range
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SynthesisType range = SynthesisType._(
    'range',
  );

  /// classification
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SynthesisType classification = SynthesisType._(
    'classification',
  );

  /// NotApplicable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SynthesisType NotApplicable = SynthesisType._(
    'NotApplicable',
  );

  /// For instances where an Element is present but not value

  static final SynthesisType elementOnly = SynthesisType._('');

  /// List of all enum-like values
  static final List<SynthesisType> values = [
    std_MA,
    IPD_MA,
    indirect_NMA,
    combined_NMA,
    range,
    classification,
    NotApplicable,
  ];

  /// Returns the enum value with an element attached
  SynthesisType withElement(Element? newElement) {
    return SynthesisType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SynthesisType] from JSON.
  static SynthesisType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SynthesisType.elementOnly.withElement(element);
    }
    return SynthesisType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SynthesisType.$fhirCode';
}
