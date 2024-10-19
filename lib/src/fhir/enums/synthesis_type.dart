// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Types of combining results from a body of evidence (eg. summary data meta-analysis).
@Entity()
class SynthesisType extends FhirCode {
  /// Factory constructor to create [SynthesisType] from JSON.
  factory SynthesisType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SynthesisType.elementOnly(element);
    }
    if (values.contains(value)) {
      return SynthesisType._(value, element);
    }
    throw ArgumentError(
      'SynthesisType.fromJson: JSON value is not a valid value',
    );
  }

  /// std_MA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SynthesisType.std_MA([this.element])
      : dbValue = 'std-MA',
        super('std-MA', element);

  /// IPD_MA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SynthesisType.IPD_MA([this.element])
      : dbValue = 'IPD-MA',
        super('IPD-MA', element);

  /// indirect_NMA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SynthesisType.indirect_NMA([this.element])
      : dbValue = 'indirect-NMA',
        super('indirect-NMA', element);

  /// combined_NMA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SynthesisType.combined_NMA([this.element])
      : dbValue = 'combined-NMA',
        super('combined-NMA', element);

  /// range
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SynthesisType.range([this.element])
      : dbValue = 'range',
        super('range', element);

  /// classification
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SynthesisType.classification([this.element])
      : dbValue = 'classification',
        super('classification', element);

  /// NotApplicable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SynthesisType.NotApplicable([this.element])
      : dbValue = 'NotApplicable',
        super('NotApplicable', element);

  /// For instances where an Element is present but not value

  SynthesisType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  SynthesisType._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'std-MA',
    'IPD-MA',
    'indirect-NMA',
    'combined-NMA',
    'range',
    'classification',
    'NotApplicable',
  ];

  /// Returns the enum value with an element attached
  SynthesisType withElement(Element? newElement) {
    return SynthesisType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SynthesisType.$value';
}
