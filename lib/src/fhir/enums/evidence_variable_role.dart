// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The role that the assertion variable plays.
@Entity()
class EvidenceVariableRole extends FhirCode {
  /// Factory constructor to create [EvidenceVariableRole] from JSON.
  factory EvidenceVariableRole.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceVariableRole.elementOnly(element);
    }
    if (values.contains(value)) {
      return EvidenceVariableRole._(value, element);
    }
    throw ArgumentError(
      'EvidenceVariableRole.fromJson: JSON value is not a valid value',
    );
  }

  /// population
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceVariableRole.population([this.element])
      : dbValue = 'population',
        super('population', element);

  /// subpopulation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceVariableRole.subpopulation([this.element])
      : dbValue = 'subpopulation',
        super('subpopulation', element);

  /// exposure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceVariableRole.exposure([this.element])
      : dbValue = 'exposure',
        super('exposure', element);

  /// referenceExposure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceVariableRole.referenceExposure([this.element])
      : dbValue = 'referenceExposure',
        super('referenceExposure', element);

  /// measuredVariable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceVariableRole.measuredVariable([this.element])
      : dbValue = 'measuredVariable',
        super('measuredVariable', element);

  /// confounder
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceVariableRole.confounder([this.element])
      : dbValue = 'confounder',
        super('confounder', element);

  /// For instances where an Element is present but not value

  EvidenceVariableRole.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  EvidenceVariableRole._(super.input, [super.element])
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
    'population',
    'subpopulation',
    'exposure',
    'referenceExposure',
    'measuredVariable',
    'confounder',
  ];

  /// Returns the enum value with an element attached
  EvidenceVariableRole withElement(Element? newElement) {
    return EvidenceVariableRole._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'EvidenceVariableRole.$value';
}
