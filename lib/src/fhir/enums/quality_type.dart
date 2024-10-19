// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Type for quality report.
@Entity()
class QualityType extends FhirCode {
  /// Factory constructor to create [QualityType] from JSON.
  factory QualityType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QualityType.elementOnly(element);
    }
    if (values.contains(value)) {
      return QualityType._(value, element);
    }
    throw ArgumentError(
      'QualityType.fromJson: JSON value is not a valid value',
    );
  }

  /// indel
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  QualityType.indel([this.element])
      : dbValue = 'indel',
        super('indel', element);

  /// snp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  QualityType.snp([this.element])
      : dbValue = 'snp',
        super('snp', element);

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  QualityType.unknown([this.element])
      : dbValue = 'unknown',
        super('unknown', element);

  /// For instances where an Element is present but not value

  QualityType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  QualityType._(super.input, [super.element])
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
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'indel',
    'snp',
    'unknown',
  ];

  /// Returns the enum value with an element attached
  QualityType withElement(Element? newElement) {
    return QualityType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'QualityType.$value';
}
