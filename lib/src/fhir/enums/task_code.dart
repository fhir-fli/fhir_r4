// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Codes indicating the type of action that is expected to be performed
@collection
class TaskCode {
  /// Constructor for internal use (like enum)
  TaskCode({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// TaskCode values
  /// approve
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TaskCode approve = TaskCode(
    fhirCode: 'approve',
  );

  /// fulfill
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TaskCode fulfill = TaskCode(
    fhirCode: 'fulfill',
  );

  /// abort
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TaskCode abort = TaskCode(
    fhirCode: 'abort',
  );

  /// replace
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TaskCode replace = TaskCode(
    fhirCode: 'replace',
  );

  /// change
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TaskCode change = TaskCode(
    fhirCode: 'change',
  );

  /// suspend
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TaskCode suspend = TaskCode(
    fhirCode: 'suspend',
  );

  /// resume
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TaskCode resume = TaskCode(
    fhirCode: 'resume',
  );

  /// For instances where an Element is present but not value

  static final TaskCode elementOnly = TaskCode();

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
    return TaskCode(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'TaskCode.$fhirCode';
}
