// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Preferred value set for AllergyIntolerance Verification Status.
@Entity()
class AllergyIntoleranceVerificationStatusCodes extends FhirCode {
  /// Factory constructor to create [AllergyIntoleranceVerificationStatusCodes] from JSON.
  factory AllergyIntoleranceVerificationStatusCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceVerificationStatusCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return AllergyIntoleranceVerificationStatusCodes._(value, element);
    }
    throw ArgumentError(
      'AllergyIntoleranceVerificationStatusCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// unconfirmed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AllergyIntoleranceVerificationStatusCodes.unconfirmed([this.element])
      : dbValue = 'unconfirmed',
        super('unconfirmed', element);

  /// confirmed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AllergyIntoleranceVerificationStatusCodes.confirmed([this.element])
      : dbValue = 'confirmed',
        super('confirmed', element);

  /// refuted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AllergyIntoleranceVerificationStatusCodes.refuted([this.element])
      : dbValue = 'refuted',
        super('refuted', element);

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AllergyIntoleranceVerificationStatusCodes.entered_in_error([this.element])
      : dbValue = 'entered-in-error',
        super('entered-in-error', element);

  /// For instances where an Element is present but not value

  AllergyIntoleranceVerificationStatusCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  AllergyIntoleranceVerificationStatusCodes._(super.input, [super.element])
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
    'unconfirmed',
    'confirmed',
    'refuted',
    'entered-in-error',
  ];

  /// Returns the enum value with an element attached
  AllergyIntoleranceVerificationStatusCodes withElement(Element? newElement) {
    return AllergyIntoleranceVerificationStatusCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AllergyIntoleranceVerificationStatusCodes.$value';
}
