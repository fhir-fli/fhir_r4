// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes indicating the type of action that is expected to be performed
class TaskCode {
  // Private constructor for internal use (like enum)
  TaskCode._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// TaskCode values
  /// approve
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TaskCode approve = TaskCode._(
    'approve',
  );

  /// fulfill
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TaskCode fulfill = TaskCode._(
    'fulfill',
  );

  /// abort
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TaskCode abort = TaskCode._(
    'abort',
  );

  /// replace
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TaskCode replace = TaskCode._(
    'replace',
  );

  /// change
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TaskCode change = TaskCode._(
    'change',
  );

  /// suspend
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TaskCode suspend = TaskCode._(
    'suspend',
  );

  /// resume
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TaskCode resume = TaskCode._(
    'resume',
  );

  /// For instances where an Element is present but not value

  static final TaskCode elementOnly = TaskCode._('');

  /// List of all enum-like values
  static final List<TaskCode> values = [
    approve,
    fulfill,
    abort,
    replace,
    change,
    suspend,
    resume,
  ];

  /// Returns the enum value with an element attached
  TaskCode withElement(Element? newElement) {
    return TaskCode._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [TaskCode] from JSON.
  static TaskCode fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TaskCode.elementOnly.withElement(element);
    }
    return TaskCode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
