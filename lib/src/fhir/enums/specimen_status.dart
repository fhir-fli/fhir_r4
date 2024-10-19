// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Codes providing the status/availability of a specimen.
@Entity()
class SpecimenStatus extends FhirCode {
  /// Factory constructor to create [SpecimenStatus] from JSON.
  factory SpecimenStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SpecimenStatus.elementOnly(element);
    }
    if (values.contains(value)) {
      return SpecimenStatus._(value, element);
    }
    throw ArgumentError(
      'SpecimenStatus.fromJson: JSON value is not a valid value',
    );
  }

  /// available
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SpecimenStatus.available([this.element])
      : dbValue = 'available',
        super('available', element);

  /// unavailable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SpecimenStatus.unavailable([this.element])
      : dbValue = 'unavailable',
        super('unavailable', element);

  /// unsatisfactory
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SpecimenStatus.unsatisfactory([this.element])
      : dbValue = 'unsatisfactory',
        super('unsatisfactory', element);

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SpecimenStatus.entered_in_error([this.element])
      : dbValue = 'entered-in-error',
        super('entered-in-error', element);

  /// For instances where an Element is present but not value

  SpecimenStatus.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  SpecimenStatus._(super.input, [super.element])
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
    'available',
    'unavailable',
    'unsatisfactory',
    'entered-in-error',
  ];

  /// Returns the enum value with an element attached
  SpecimenStatus withElement(Element? newElement) {
    return SpecimenStatus._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SpecimenStatus.$value';
}
