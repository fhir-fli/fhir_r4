// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Example use codes for the List resource - typical kinds of use.
class ExampleUseCodesForList {
  // Private constructor for internal use (like enum)
  ExampleUseCodesForList._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ExampleUseCodesForList values
  /// alerts
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleUseCodesForList alerts = ExampleUseCodesForList._(
    'alerts',
  );

  /// adverserxns
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleUseCodesForList adverserxns = ExampleUseCodesForList._(
    'adverserxns',
  );

  /// allergies
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleUseCodesForList allergies = ExampleUseCodesForList._(
    'allergies',
  );

  /// medications
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleUseCodesForList medications = ExampleUseCodesForList._(
    'medications',
  );

  /// problems
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleUseCodesForList problems = ExampleUseCodesForList._(
    'problems',
  );

  /// worklist
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleUseCodesForList worklist = ExampleUseCodesForList._(
    'worklist',
  );

  /// waiting
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleUseCodesForList waiting = ExampleUseCodesForList._(
    'waiting',
  );

  /// protocols
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleUseCodesForList protocols = ExampleUseCodesForList._(
    'protocols',
  );

  /// plans
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleUseCodesForList plans = ExampleUseCodesForList._(
    'plans',
  );

  /// For instances where an Element is present but not value

  static final ExampleUseCodesForList elementOnly =
      ExampleUseCodesForList._('');

  /// List of all enum-like values
  static final List<ExampleUseCodesForList> values = [
    alerts,
    adverserxns,
    allergies,
    medications,
    problems,
    worklist,
    waiting,
    protocols,
    plans,
  ];

  /// Returns the enum value with an element attached
  ExampleUseCodesForList withElement(Element? newElement) {
    return ExampleUseCodesForList._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ExampleUseCodesForList] from JSON.
  static ExampleUseCodesForList fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleUseCodesForList.elementOnly.withElement(element);
    }
    return ExampleUseCodesForList.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ExampleUseCodesForList.$fhirCode';
}
