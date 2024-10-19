// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the current status of the administered dose of vaccine.
@collection
class ImmunizationStatusCodes {
  /// Constructor for internal use (like enum)
  ImmunizationStatusCodes({this.fhirCode, this.element})
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

  /// ImmunizationStatusCodes values
  /// preparation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationStatusCodes preparation = ImmunizationStatusCodes(
    fhirCode: 'preparation',
  );

  /// in_progress
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationStatusCodes in_progress = ImmunizationStatusCodes(
    fhirCode: 'in-progress',
  );

  /// not_done
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationStatusCodes not_done = ImmunizationStatusCodes(
    fhirCode: 'not-done',
  );

  /// on_hold
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationStatusCodes on_hold = ImmunizationStatusCodes(
    fhirCode: 'on-hold',
  );

  /// stopped
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationStatusCodes stopped = ImmunizationStatusCodes(
    fhirCode: 'stopped',
  );

  /// completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationStatusCodes completed = ImmunizationStatusCodes(
    fhirCode: 'completed',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationStatusCodes entered_in_error =
      ImmunizationStatusCodes(
    fhirCode: 'entered-in-error',
  );

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationStatusCodes unknown = ImmunizationStatusCodes(
    fhirCode: 'unknown',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationStatusCodes elementOnly = ImmunizationStatusCodes();

  /// List of all enum-like values
  static final List<ImmunizationStatusCodes> values = [
    preparation,
    in_progress,
    not_done,
    on_hold,
    stopped,
    completed,
    entered_in_error,
    unknown,
  ];

  /// Returns the enum value with an element attached
  ImmunizationStatusCodes withElement(Element? newElement) {
    return ImmunizationStatusCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ImmunizationStatusCodes] from JSON.
  static ImmunizationStatusCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationStatusCodes.elementOnly.withElement(element);
    }
    return ImmunizationStatusCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ImmunizationStatusCodes.$fhirCode';
}
