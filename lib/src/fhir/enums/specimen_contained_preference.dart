// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Degree of preference of a type of conditioned specimen.
@Entity()
class SpecimenContainedPreference extends FhirCode {
  /// Factory constructor to create [SpecimenContainedPreference] from JSON.
  factory SpecimenContainedPreference.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SpecimenContainedPreference.elementOnly(element);
    }
    if (values.contains(value)) {
      return SpecimenContainedPreference._(value, element);
    }
    throw ArgumentError(
      'SpecimenContainedPreference.fromJson: JSON value is not a valid value',
    );
  }

  /// preferred
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SpecimenContainedPreference.preferred([this.element])
      : dbValue = 'preferred',
        super('preferred', element);

  /// alternate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SpecimenContainedPreference.alternate([this.element])
      : dbValue = 'alternate',
        super('alternate', element);

  /// For instances where an Element is present but not value

  SpecimenContainedPreference.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  SpecimenContainedPreference._(super.input, [super.element])
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
    'preferred',
    'alternate',
  ];

  /// Returns the enum value with an element attached
  SpecimenContainedPreference withElement(Element? newElement) {
    return SpecimenContainedPreference._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SpecimenContainedPreference.$value';
}
