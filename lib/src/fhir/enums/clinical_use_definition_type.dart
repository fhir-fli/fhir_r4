// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Overall defining type of this clinical use definition.
@Entity()
class ClinicalUseDefinitionType extends FhirCode {
  /// Factory constructor to create [ClinicalUseDefinitionType] from JSON.
  factory ClinicalUseDefinitionType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClinicalUseDefinitionType.elementOnly(element);
    }
    if (values.contains(value)) {
      return ClinicalUseDefinitionType._(value, element);
    }
    throw ArgumentError(
      'ClinicalUseDefinitionType.fromJson: JSON value is not a valid value',
    );
  }

  /// indication
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ClinicalUseDefinitionType.indication([this.element])
      : dbValue = 'indication',
        super('indication', element);

  /// contraindication
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ClinicalUseDefinitionType.contraindication([this.element])
      : dbValue = 'contraindication',
        super('contraindication', element);

  /// interaction
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ClinicalUseDefinitionType.interaction([this.element])
      : dbValue = 'interaction',
        super('interaction', element);

  /// undesirable_effect
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ClinicalUseDefinitionType.undesirable_effect([this.element])
      : dbValue = 'undesirable-effect',
        super('undesirable-effect', element);

  /// warning
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ClinicalUseDefinitionType.warning([this.element])
      : dbValue = 'warning',
        super('warning', element);

  /// For instances where an Element is present but not value

  ClinicalUseDefinitionType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ClinicalUseDefinitionType._(super.input, [super.element])
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
    'indication',
    'contraindication',
    'interaction',
    'undesirable-effect',
    'warning',
  ];

  /// Returns the enum value with an element attached
  ClinicalUseDefinitionType withElement(Element? newElement) {
    return ClinicalUseDefinitionType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ClinicalUseDefinitionType.$value';
}
