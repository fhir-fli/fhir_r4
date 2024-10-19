// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// MedicationRequest Course of Therapy Codes
@Entity()
class MedicationRequestCourseOfTherapyCodes extends FhirCode {
  /// Factory constructor to create [MedicationRequestCourseOfTherapyCodes] from JSON.
  factory MedicationRequestCourseOfTherapyCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationRequestCourseOfTherapyCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return MedicationRequestCourseOfTherapyCodes._(value, element);
    }
    throw ArgumentError(
      'MedicationRequestCourseOfTherapyCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// continuous
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationRequestCourseOfTherapyCodes.continuous([this.element])
      : dbValue = 'continuous',
        super('continuous', element);

  /// acute
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationRequestCourseOfTherapyCodes.acute([this.element])
      : dbValue = 'acute',
        super('acute', element);

  /// seasonal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationRequestCourseOfTherapyCodes.seasonal([this.element])
      : dbValue = 'seasonal',
        super('seasonal', element);

  /// For instances where an Element is present but not value

  MedicationRequestCourseOfTherapyCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  MedicationRequestCourseOfTherapyCodes._(super.input, [super.element])
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
    'continuous',
    'acute',
    'seasonal',
  ];

  /// Returns the enum value with an element attached
  MedicationRequestCourseOfTherapyCodes withElement(Element? newElement) {
    return MedicationRequestCourseOfTherapyCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MedicationRequestCourseOfTherapyCodes.$value';
}
