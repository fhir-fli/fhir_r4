// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Lifecycle status of the questionnaire response.
@Entity()
class QuestionnaireResponseStatus extends FhirCode {
  /// Factory constructor to create [QuestionnaireResponseStatus] from JSON.
  factory QuestionnaireResponseStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuestionnaireResponseStatus.elementOnly(element);
    }
    if (values.contains(value)) {
      return QuestionnaireResponseStatus._(value, element);
    }
    throw ArgumentError(
      'QuestionnaireResponseStatus.fromJson: JSON value is not a valid value',
    );
  }

  /// in_progress
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  QuestionnaireResponseStatus.in_progress([this.element])
      : dbValue = 'in-progress',
        super('in-progress', element);

  /// completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  QuestionnaireResponseStatus.completed([this.element])
      : dbValue = 'completed',
        super('completed', element);

  /// amended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  QuestionnaireResponseStatus.amended([this.element])
      : dbValue = 'amended',
        super('amended', element);

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  QuestionnaireResponseStatus.entered_in_error([this.element])
      : dbValue = 'entered-in-error',
        super('entered-in-error', element);

  /// stopped
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  QuestionnaireResponseStatus.stopped([this.element])
      : dbValue = 'stopped',
        super('stopped', element);

  /// For instances where an Element is present but not value

  QuestionnaireResponseStatus.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  QuestionnaireResponseStatus._(super.input, [super.element])
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
    'in-progress',
    'completed',
    'amended',
    'entered-in-error',
    'stopped',
  ];

  /// Returns the enum value with an element attached
  QuestionnaireResponseStatus withElement(Element? newElement) {
    return QuestionnaireResponseStatus._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'QuestionnaireResponseStatus.$value';
}
