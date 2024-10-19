// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the reason why a dose is considered to be subpotent. This value set is provided as a suggestive example.
@Entity()
class ImmunizationSubpotentReason extends FhirCode {
  /// Factory constructor to create [ImmunizationSubpotentReason] from JSON.
  factory ImmunizationSubpotentReason.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationSubpotentReason.elementOnly(element);
    }
    if (values.contains(value)) {
      return ImmunizationSubpotentReason._(value, element);
    }
    throw ArgumentError(
      'ImmunizationSubpotentReason.fromJson: JSON value is not a valid value',
    );
  }

  /// partial
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationSubpotentReason.partial([this.element])
      : dbValue = 'partial',
        super('partial', element);

  /// coldchainbreak
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationSubpotentReason.coldchainbreak([this.element])
      : dbValue = 'coldchainbreak',
        super('coldchainbreak', element);

  /// recall
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationSubpotentReason.recall([this.element])
      : dbValue = 'recall',
        super('recall', element);

  /// For instances where an Element is present but not value

  ImmunizationSubpotentReason.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ImmunizationSubpotentReason._(super.input, [super.element])
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
    'partial',
    'coldchainbreak',
    'recall',
  ];

  /// Returns the enum value with an element attached
  ImmunizationSubpotentReason withElement(Element? newElement) {
    return ImmunizationSubpotentReason._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ImmunizationSubpotentReason.$value';
}
