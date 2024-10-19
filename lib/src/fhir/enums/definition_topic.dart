// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// High-level categorization of the definition, used for searching, sorting, and filtering.
@Entity()
class DefinitionTopic extends FhirCode {
  /// Factory constructor to create [DefinitionTopic] from JSON.
  factory DefinitionTopic.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DefinitionTopic.elementOnly(element);
    }
    if (values.contains(value)) {
      return DefinitionTopic._(value, element);
    }
    throw ArgumentError(
      'DefinitionTopic.fromJson: JSON value is not a valid value',
    );
  }

  /// treatment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DefinitionTopic.treatment([this.element])
      : dbValue = 'treatment',
        super('treatment', element);

  /// education
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DefinitionTopic.education([this.element])
      : dbValue = 'education',
        super('education', element);

  /// assessment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DefinitionTopic.assessment([this.element])
      : dbValue = 'assessment',
        super('assessment', element);

  /// For instances where an Element is present but not value

  DefinitionTopic.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  DefinitionTopic._(super.input, [super.element])
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
    'treatment',
    'education',
    'assessment',
  ];

  /// Returns the enum value with an element attached
  DefinitionTopic withElement(Element? newElement) {
    return DefinitionTopic._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DefinitionTopic.$value';
}
