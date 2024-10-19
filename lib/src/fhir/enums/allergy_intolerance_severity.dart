// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Clinical assessment of the severity of a reaction event as a whole, potentially considering multiple different manifestations.
@Entity()
class AllergyIntoleranceSeverity extends FhirCode {
  /// Factory constructor to create [AllergyIntoleranceSeverity] from JSON.
  factory AllergyIntoleranceSeverity.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceSeverity.elementOnly(element);
    }
    if (values.contains(value)) {
      return AllergyIntoleranceSeverity._(value, element);
    }
    throw ArgumentError(
      'AllergyIntoleranceSeverity.fromJson: JSON value is not a valid value',
    );
  }

  /// mild
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AllergyIntoleranceSeverity.mild([this.element])
      : dbValue = 'mild',
        super('mild', element);

  /// moderate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AllergyIntoleranceSeverity.moderate([this.element])
      : dbValue = 'moderate',
        super('moderate', element);

  /// severe
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AllergyIntoleranceSeverity.severe([this.element])
      : dbValue = 'severe',
        super('severe', element);

  /// For instances where an Element is present but not value

  AllergyIntoleranceSeverity.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  AllergyIntoleranceSeverity._(super.input, [super.element])
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
    'mild',
    'moderate',
    'severe',
  ];

  /// Returns the enum value with an element attached
  AllergyIntoleranceSeverity withElement(Element? newElement) {
    return AllergyIntoleranceSeverity._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AllergyIntoleranceSeverity.$value';
}
