// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Example use codes for the List resource - typical kinds of use.
@collection
class ExampleUseCodesForList {
  /// Constructor for internal use (like enum)
  ExampleUseCodesForList({this.fhirCode, this.element})
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

  /// ExampleUseCodesForList values
  /// alerts
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleUseCodesForList alerts = ExampleUseCodesForList(
    fhirCode: 'alerts',
  );

  /// adverserxns
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleUseCodesForList adverserxns = ExampleUseCodesForList(
    fhirCode: 'adverserxns',
  );

  /// allergies
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleUseCodesForList allergies = ExampleUseCodesForList(
    fhirCode: 'allergies',
  );

  /// medications
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleUseCodesForList medications = ExampleUseCodesForList(
    fhirCode: 'medications',
  );

  /// problems
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleUseCodesForList problems = ExampleUseCodesForList(
    fhirCode: 'problems',
  );

  /// worklist
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleUseCodesForList worklist = ExampleUseCodesForList(
    fhirCode: 'worklist',
  );

  /// waiting
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleUseCodesForList waiting = ExampleUseCodesForList(
    fhirCode: 'waiting',
  );

  /// protocols
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleUseCodesForList protocols = ExampleUseCodesForList(
    fhirCode: 'protocols',
  );

  /// plans
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleUseCodesForList plans = ExampleUseCodesForList(
    fhirCode: 'plans',
  );

  /// For instances where an Element is present but not value

  static final ExampleUseCodesForList elementOnly = ExampleUseCodesForList();

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
    return ExampleUseCodesForList(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
