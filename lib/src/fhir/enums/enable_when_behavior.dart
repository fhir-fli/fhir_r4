// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Controls how multiple enableWhen values are interpreted - whether all or any must be true.
@collection
class EnableWhenBehavior {
  /// Constructor for internal use (like enum)
  EnableWhenBehavior({this.fhirCode, this.element})
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

  /// EnableWhenBehavior values
  /// all
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EnableWhenBehavior all = EnableWhenBehavior(
    fhirCode: 'all',
  );

  /// any
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EnableWhenBehavior any = EnableWhenBehavior(
    fhirCode: 'any',
  );

  /// For instances where an Element is present but not value

  static final EnableWhenBehavior elementOnly = EnableWhenBehavior();

  /// List of all enum-like values
  static final List<EnableWhenBehavior> values = [
    all,
    any,
  ];

  /// Returns the enum value with an element attached
  EnableWhenBehavior withElement(Element? newElement) {
    return EnableWhenBehavior(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [EnableWhenBehavior] from JSON.
  static EnableWhenBehavior fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EnableWhenBehavior.elementOnly.withElement(element);
    }
    return EnableWhenBehavior.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'EnableWhenBehavior.$fhirCode';
}
