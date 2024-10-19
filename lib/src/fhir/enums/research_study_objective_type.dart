// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Codes for the kind of study objective.
@Entity()
class ResearchStudyObjectiveType extends FhirCode {
  /// Factory constructor to create [ResearchStudyObjectiveType] from JSON.
  factory ResearchStudyObjectiveType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchStudyObjectiveType.elementOnly(element);
    }
    if (values.contains(value)) {
      return ResearchStudyObjectiveType._(value, element);
    }
    throw ArgumentError(
      'ResearchStudyObjectiveType.fromJson: JSON value is not a valid value',
    );
  }

  /// primary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchStudyObjectiveType.primary([this.element])
      : dbValue = 'primary',
        super('primary', element);

  /// secondary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchStudyObjectiveType.secondary([this.element])
      : dbValue = 'secondary',
        super('secondary', element);

  /// exploratory
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchStudyObjectiveType.exploratory([this.element])
      : dbValue = 'exploratory',
        super('exploratory', element);

  /// For instances where an Element is present but not value

  ResearchStudyObjectiveType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ResearchStudyObjectiveType._(super.input, [super.element])
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
    'primary',
    'secondary',
    'exploratory',
  ];

  /// Returns the enum value with an element attached
  ResearchStudyObjectiveType withElement(Element? newElement) {
    return ResearchStudyObjectiveType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ResearchStudyObjectiveType.$value';
}
