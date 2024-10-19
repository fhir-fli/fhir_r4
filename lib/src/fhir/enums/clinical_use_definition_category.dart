// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// A categorisation for a clinical use information item.
@Entity()
class ClinicalUseDefinitionCategory extends FhirCode {
  /// Factory constructor to create [ClinicalUseDefinitionCategory] from JSON.
  factory ClinicalUseDefinitionCategory.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClinicalUseDefinitionCategory.elementOnly(element);
    }
    if (values.contains(value)) {
      return ClinicalUseDefinitionCategory._(value, element);
    }
    throw ArgumentError(
      'ClinicalUseDefinitionCategory.fromJson: JSON value is not a valid value',
    );
  }

  /// Pregnancy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ClinicalUseDefinitionCategory.Pregnancy([this.element])
      : dbValue = 'Pregnancy',
        super('Pregnancy', element);

  /// Overdose
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ClinicalUseDefinitionCategory.Overdose([this.element])
      : dbValue = 'Overdose',
        super('Overdose', element);

  /// DriveAndMachines
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ClinicalUseDefinitionCategory.DriveAndMachines([this.element])
      : dbValue = 'DriveAndMachines',
        super('DriveAndMachines', element);

  /// For instances where an Element is present but not value

  ClinicalUseDefinitionCategory.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ClinicalUseDefinitionCategory._(super.input, [super.element])
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
    'Pregnancy',
    'Overdose',
    'DriveAndMachines',
  ];

  /// Returns the enum value with an element attached
  ClinicalUseDefinitionCategory withElement(Element? newElement) {
    return ClinicalUseDefinitionCategory._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ClinicalUseDefinitionCategory.$value';
}
