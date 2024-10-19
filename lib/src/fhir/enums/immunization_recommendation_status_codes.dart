// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the status of the patient towards perceived immunity against a vaccine preventable disease. This value set is provided as a suggestive example.
@Entity()
class ImmunizationRecommendationStatusCodes extends FhirCode {
  /// Factory constructor to create [ImmunizationRecommendationStatusCodes] from JSON.
  factory ImmunizationRecommendationStatusCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationRecommendationStatusCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ImmunizationRecommendationStatusCodes._(value, element);
    }
    throw ArgumentError(
      'ImmunizationRecommendationStatusCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// due
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationRecommendationStatusCodes.due([this.element])
      : dbValue = 'due',
        super('due', element);

  /// overdue
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationRecommendationStatusCodes.overdue([this.element])
      : dbValue = 'overdue',
        super('overdue', element);

  /// immune
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationRecommendationStatusCodes.immune([this.element])
      : dbValue = 'immune',
        super('immune', element);

  /// contraindicated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationRecommendationStatusCodes.contraindicated([this.element])
      : dbValue = 'contraindicated',
        super('contraindicated', element);

  /// complete
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationRecommendationStatusCodes.complete([this.element])
      : dbValue = 'complete',
        super('complete', element);

  /// For instances where an Element is present but not value

  ImmunizationRecommendationStatusCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ImmunizationRecommendationStatusCodes._(super.input, [super.element])
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
    'due',
    'overdue',
    'immune',
    'contraindicated',
    'complete',
  ];

  /// Returns the enum value with an element attached
  ImmunizationRecommendationStatusCodes withElement(Element? newElement) {
    return ImmunizationRecommendationStatusCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ImmunizationRecommendationStatusCodes.$value';
}
