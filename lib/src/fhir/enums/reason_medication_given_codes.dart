// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set is provided as an example. The value set to instantiate this attribute should be drawn from a robust terminology code system that consists of or contains concepts to support the medication process.
@Entity()
class ReasonMedicationGivenCodes extends FhirCode {
  /// Factory constructor to create [ReasonMedicationGivenCodes] from JSON.
  factory ReasonMedicationGivenCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReasonMedicationGivenCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ReasonMedicationGivenCodes._(value, element);
    }
    throw ArgumentError(
      'ReasonMedicationGivenCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// a
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReasonMedicationGivenCodes.a([this.element])
      : dbValue = 'a',
        super('a', element);

  /// b
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReasonMedicationGivenCodes.b([this.element])
      : dbValue = 'b',
        super('b', element);

  /// c
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReasonMedicationGivenCodes.c([this.element])
      : dbValue = 'c',
        super('c', element);

  /// For instances where an Element is present but not value

  ReasonMedicationGivenCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ReasonMedicationGivenCodes._(super.input, [super.element])
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
    'a',
    'b',
    'c',
  ];

  /// Returns the enum value with an element attached
  ReasonMedicationGivenCodes withElement(Element? newElement) {
    return ReasonMedicationGivenCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ReasonMedicationGivenCodes.$value';
}
