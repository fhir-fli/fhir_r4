// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Codes describing the reason why a family member's history is not available.
@Entity()
class FamilyHistoryAbsentReason extends FhirCode {
  /// Factory constructor to create [FamilyHistoryAbsentReason] from JSON.
  factory FamilyHistoryAbsentReason.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FamilyHistoryAbsentReason.elementOnly(element);
    }
    if (values.contains(value)) {
      return FamilyHistoryAbsentReason._(value, element);
    }
    throw ArgumentError(
      'FamilyHistoryAbsentReason.fromJson: JSON value is not a valid value',
    );
  }

  /// subject_unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FamilyHistoryAbsentReason.subject_unknown([this.element])
      : dbValue = 'subject-unknown',
        super('subject-unknown', element);

  /// withheld
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FamilyHistoryAbsentReason.withheld([this.element])
      : dbValue = 'withheld',
        super('withheld', element);

  /// unable_to_obtain
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FamilyHistoryAbsentReason.unable_to_obtain([this.element])
      : dbValue = 'unable-to-obtain',
        super('unable-to-obtain', element);

  /// deferred_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FamilyHistoryAbsentReason.deferred_([this.element])
      : dbValue = 'deferred',
        super('deferred', element);

  /// For instances where an Element is present but not value

  FamilyHistoryAbsentReason.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  FamilyHistoryAbsentReason._(super.input, [super.element])
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
    'subject-unknown',
    'withheld',
    'unable-to-obtain',
    'deferred',
  ];

  /// Returns the enum value with an element attached
  FamilyHistoryAbsentReason withElement(Element? newElement) {
    return FamilyHistoryAbsentReason._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'FamilyHistoryAbsentReason.$value';
}
