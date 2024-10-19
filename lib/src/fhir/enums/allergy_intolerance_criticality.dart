// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Estimate of the potential clinical harm, or seriousness, of a reaction to an identified substance.
@Entity()
class AllergyIntoleranceCriticality extends FhirCode {
  /// Factory constructor to create [AllergyIntoleranceCriticality] from JSON.
  factory AllergyIntoleranceCriticality.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceCriticality.elementOnly(element);
    }
    if (values.contains(value)) {
      return AllergyIntoleranceCriticality._(value, element);
    }
    throw ArgumentError(
      'AllergyIntoleranceCriticality.fromJson: JSON value is not a valid value',
    );
  }

  /// low
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AllergyIntoleranceCriticality.low([this.element])
      : dbValue = 'low',
        super('low', element);

  /// high
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AllergyIntoleranceCriticality.high([this.element])
      : dbValue = 'high',
        super('high', element);

  /// unable_to_assess
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AllergyIntoleranceCriticality.unable_to_assess([this.element])
      : dbValue = 'unable-to-assess',
        super('unable-to-assess', element);

  /// For instances where an Element is present but not value

  AllergyIntoleranceCriticality.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  AllergyIntoleranceCriticality._(super.input, [super.element])
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
    'low',
    'high',
    'unable-to-assess',
  ];

  /// Returns the enum value with an element attached
  AllergyIntoleranceCriticality withElement(Element? newElement) {
    return AllergyIntoleranceCriticality._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AllergyIntoleranceCriticality.$value';
}
