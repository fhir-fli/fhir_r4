// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Types of combining results from a body of evidence (eg. summary data meta-analysis).
@collection
class SynthesisType {
  /// Constructor for internal use (like enum)
  SynthesisType({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SynthesisType values
  /// std_MA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SynthesisType std_MA = SynthesisType(
    fhirCode: 'std-MA',
  );

  /// IPD_MA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SynthesisType IPD_MA = SynthesisType(
    fhirCode: 'IPD-MA',
  );

  /// indirect_NMA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SynthesisType indirect_NMA = SynthesisType(
    fhirCode: 'indirect-NMA',
  );

  /// combined_NMA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SynthesisType combined_NMA = SynthesisType(
    fhirCode: 'combined-NMA',
  );

  /// range
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SynthesisType range = SynthesisType(
    fhirCode: 'range',
  );

  /// classification
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SynthesisType classification = SynthesisType(
    fhirCode: 'classification',
  );

  /// NotApplicable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SynthesisType NotApplicable = SynthesisType(
    fhirCode: 'NotApplicable',
  );

  /// For instances where an Element is present but not value

  static final SynthesisType elementOnly = SynthesisType();

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
    return SynthesisType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
