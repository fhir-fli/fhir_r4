// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Classification of relationship between a therapy and a contraindication or an indication.
@Entity()
class TherapyRelationshipType extends FhirCode {
  /// Factory constructor to create [TherapyRelationshipType] from JSON.
  factory TherapyRelationshipType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TherapyRelationshipType.elementOnly(element);
    }
    if (values.contains(value)) {
      return TherapyRelationshipType._(value, element);
    }
    throw ArgumentError(
      'TherapyRelationshipType.fromJson: JSON value is not a valid value',
    );
  }

  /// contraindicated_only_with
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TherapyRelationshipType.contraindicated_only_with([this.element])
      : dbValue = 'contraindicated-only-with',
        super('contraindicated-only-with', element);

  /// contraindicated_except_with
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TherapyRelationshipType.contraindicated_except_with([this.element])
      : dbValue = 'contraindicated-except-with',
        super('contraindicated-except-with', element);

  /// indicated_only_with
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TherapyRelationshipType.indicated_only_with([this.element])
      : dbValue = 'indicated-only-with',
        super('indicated-only-with', element);

  /// indicated_except_with
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TherapyRelationshipType.indicated_except_with([this.element])
      : dbValue = 'indicated-except-with',
        super('indicated-except-with', element);

  /// indicated_only_before
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TherapyRelationshipType.indicated_only_before([this.element])
      : dbValue = 'indicated-only-before',
        super('indicated-only-before', element);

  /// replace_other_therapy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TherapyRelationshipType.replace_other_therapy([this.element])
      : dbValue = 'replace-other-therapy',
        super('replace-other-therapy', element);

  /// replace_other_therapy_contraindicated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TherapyRelationshipType.replace_other_therapy_contraindicated([this.element])
      : dbValue = 'replace-other-therapy-contraindicated',
        super('replace-other-therapy-contraindicated', element);

  /// replace_other_therapy_not_tolerated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TherapyRelationshipType.replace_other_therapy_not_tolerated([this.element])
      : dbValue = 'replace-other-therapy-not-tolerated',
        super('replace-other-therapy-not-tolerated', element);

  /// replace_other_therapy_not_effective
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TherapyRelationshipType.replace_other_therapy_not_effective([this.element])
      : dbValue = 'replace-other-therapy-not-effective',
        super('replace-other-therapy-not-effective', element);

  /// For instances where an Element is present but not value

  TherapyRelationshipType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  TherapyRelationshipType._(super.input, [super.element])
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
    'contraindicated-only-with',
    'contraindicated-except-with',
    'indicated-only-with',
    'indicated-except-with',
    'indicated-only-before',
    'replace-other-therapy',
    'replace-other-therapy-contraindicated',
    'replace-other-therapy-not-tolerated',
    'replace-other-therapy-not-effective',
  ];

  /// Returns the enum value with an element attached
  TherapyRelationshipType withElement(Element? newElement) {
    return TherapyRelationshipType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'TherapyRelationshipType.$value';
}
