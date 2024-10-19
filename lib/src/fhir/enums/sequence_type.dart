// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Type if a sequence -- DNA, RNA, or amino acid sequence.
@Entity()
class SequenceType extends FhirCode {
  /// Factory constructor to create [SequenceType] from JSON.
  factory SequenceType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SequenceType.elementOnly(element);
    }
    if (values.contains(value)) {
      return SequenceType._(value, element);
    }
    throw ArgumentError(
      'SequenceType.fromJson: JSON value is not a valid value',
    );
  }

  /// aa
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SequenceType.aa([this.element])
      : dbValue = 'aa',
        super('aa', element);

  /// dna
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SequenceType.dna([this.element])
      : dbValue = 'dna',
        super('dna', element);

  /// rna
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SequenceType.rna([this.element])
      : dbValue = 'rna',
        super('rna', element);

  /// For instances where an Element is present but not value

  SequenceType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  SequenceType._(super.input, [super.element])
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
    'aa',
    'dna',
    'rna',
  ];

  /// Returns the enum value with an element attached
  SequenceType withElement(Element? newElement) {
    return SequenceType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SequenceType.$value';
}
