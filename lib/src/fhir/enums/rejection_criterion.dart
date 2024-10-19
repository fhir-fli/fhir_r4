// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Criterion for rejection of the specimen by laboratory.
@Entity()
class RejectionCriterion extends FhirCode {
  /// Factory constructor to create [RejectionCriterion] from JSON.
  factory RejectionCriterion.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RejectionCriterion.elementOnly(element);
    }
    if (values.contains(value)) {
      return RejectionCriterion._(value, element);
    }
    throw ArgumentError(
      'RejectionCriterion.fromJson: JSON value is not a valid value',
    );
  }

  /// hemolized
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RejectionCriterion.hemolized([this.element])
      : dbValue = 'hemolized',
        super('hemolized', element);

  /// insufficient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RejectionCriterion.insufficient([this.element])
      : dbValue = 'insufficient',
        super('insufficient', element);

  /// broken
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RejectionCriterion.broken([this.element])
      : dbValue = 'broken',
        super('broken', element);

  /// clotted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RejectionCriterion.clotted([this.element])
      : dbValue = 'clotted',
        super('clotted', element);

  /// wrong_temperature
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RejectionCriterion.wrong_temperature([this.element])
      : dbValue = 'wrong-temperature',
        super('wrong-temperature', element);

  /// For instances where an Element is present but not value

  RejectionCriterion.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  RejectionCriterion._(super.input, [super.element])
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
    'hemolized',
    'insufficient',
    'broken',
    'clotted',
    'wrong-temperature',
  ];

  /// Returns the enum value with an element attached
  RejectionCriterion withElement(Element? newElement) {
    return RejectionCriterion._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'RejectionCriterion.$value';
}
