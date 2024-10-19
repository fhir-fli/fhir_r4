// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Identification of the underlying physiological mechanism for a Reaction Risk.
@Entity()
class AllergyIntoleranceType extends FhirCode {
  /// Factory constructor to create [AllergyIntoleranceType] from JSON.
  factory AllergyIntoleranceType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceType.elementOnly(element);
    }
    if (values.contains(value)) {
      return AllergyIntoleranceType._(value, element);
    }
    throw ArgumentError(
      'AllergyIntoleranceType.fromJson: JSON value is not a valid value',
    );
  }

  /// allergy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AllergyIntoleranceType.allergy([this.element])
      : dbValue = 'allergy',
        super('allergy', element);

  /// intolerance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AllergyIntoleranceType.intolerance([this.element])
      : dbValue = 'intolerance',
        super('intolerance', element);

  /// For instances where an Element is present but not value

  AllergyIntoleranceType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  AllergyIntoleranceType._(super.input, [super.element])
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
    'allergy',
    'intolerance',
  ];

  /// Returns the enum value with an element attached
  AllergyIntoleranceType withElement(Element? newElement) {
    return AllergyIntoleranceType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AllergyIntoleranceType.$value';
}
