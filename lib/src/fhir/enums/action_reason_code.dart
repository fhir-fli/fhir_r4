// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Provides examples of reasons for actions to be performed.
@Entity()
class ActionReasonCode extends FhirCode {
  /// Factory constructor to create [ActionReasonCode] from JSON.
  factory ActionReasonCode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionReasonCode.elementOnly(element);
    }
    if (values.contains(value)) {
      return ActionReasonCode._(value, element);
    }
    throw ArgumentError(
      'ActionReasonCode.fromJson: JSON value is not a valid value',
    );
  }

  /// off_pathway
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionReasonCode.off_pathway([this.element])
      : dbValue = 'off-pathway',
        super('off-pathway', element);

  /// risk_assessment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionReasonCode.risk_assessment([this.element])
      : dbValue = 'risk-assessment',
        super('risk-assessment', element);

  /// care_gap
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionReasonCode.care_gap([this.element])
      : dbValue = 'care-gap',
        super('care-gap', element);

  /// drug_drug_interaction
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionReasonCode.drug_drug_interaction([this.element])
      : dbValue = 'drug-drug-interaction',
        super('drug-drug-interaction', element);

  /// quality_measure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ActionReasonCode.quality_measure([this.element])
      : dbValue = 'quality-measure',
        super('quality-measure', element);

  /// For instances where an Element is present but not value

  ActionReasonCode.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ActionReasonCode._(super.input, [super.element])
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
    'off-pathway',
    'risk-assessment',
    'care-gap',
    'drug-drug-interaction',
    'quality-measure',
  ];

  /// Returns the enum value with an element attached
  ActionReasonCode withElement(Element? newElement) {
    return ActionReasonCode._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ActionReasonCode.$value';
}
