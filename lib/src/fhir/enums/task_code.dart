// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Codes indicating the type of action that is expected to be performed
@Entity()
class TaskCode extends FhirCode {
  /// Factory constructor to create [TaskCode] from JSON.
  factory TaskCode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TaskCode.elementOnly(element);
    }
    if (values.contains(value)) {
      return TaskCode._(value, element);
    }
    throw ArgumentError(
      'TaskCode.fromJson: JSON value is not a valid value',
    );
  }

  /// approve
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TaskCode.approve([this.element])
      : dbValue = 'approve',
        super('approve', element);

  /// fulfill
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TaskCode.fulfill([this.element])
      : dbValue = 'fulfill',
        super('fulfill', element);

  /// abort
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TaskCode.abort([this.element])
      : dbValue = 'abort',
        super('abort', element);

  /// replace
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TaskCode.replace([this.element])
      : dbValue = 'replace',
        super('replace', element);

  /// change
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TaskCode.change([this.element])
      : dbValue = 'change',
        super('change', element);

  /// suspend
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TaskCode.suspend([this.element])
      : dbValue = 'suspend',
        super('suspend', element);

  /// resume
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TaskCode.resume([this.element])
      : dbValue = 'resume',
        super('resume', element);

  /// For instances where an Element is present but not value

  TaskCode.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  TaskCode._(super.input, [super.element])
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
    'approve',
    'fulfill',
    'abort',
    'replace',
    'change',
    'suspend',
    'resume',
  ];

  /// Returns the enum value with an element attached
  TaskCode withElement(Element? newElement) {
    return TaskCode._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'TaskCode.$value';
}
