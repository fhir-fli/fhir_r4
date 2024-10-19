// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the source of the data when the report of the immunization event is not based on information from the person, entity or organization who administered the vaccine. This value set is provided as a suggestive example.
@Entity()
class ImmunizationOriginCodes extends FhirCode {
  /// Factory constructor to create [ImmunizationOriginCodes] from JSON.
  factory ImmunizationOriginCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationOriginCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ImmunizationOriginCodes._(value, element);
    }
    throw ArgumentError(
      'ImmunizationOriginCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// provider
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationOriginCodes.provider([this.element])
      : dbValue = 'provider',
        super('provider', element);

  /// record
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationOriginCodes.record([this.element])
      : dbValue = 'record',
        super('record', element);

  /// recall
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationOriginCodes.recall([this.element])
      : dbValue = 'recall',
        super('recall', element);

  /// school
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationOriginCodes.school([this.element])
      : dbValue = 'school',
        super('school', element);

  /// jurisdiction
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationOriginCodes.jurisdiction([this.element])
      : dbValue = 'jurisdiction',
        super('jurisdiction', element);

  /// For instances where an Element is present but not value

  ImmunizationOriginCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ImmunizationOriginCodes._(super.input, [super.element])
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
    'provider',
    'record',
    'recall',
    'school',
    'jurisdiction',
  ];

  /// Returns the enum value with an element attached
  ImmunizationOriginCodes withElement(Element? newElement) {
    return ImmunizationOriginCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ImmunizationOriginCodes.$value';
}
