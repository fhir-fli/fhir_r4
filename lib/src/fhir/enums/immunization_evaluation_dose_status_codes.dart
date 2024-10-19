// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the validity of a dose relative to a particular recommended schedule. This value set is provided as a suggestive example.
@collection
class ImmunizationEvaluationDoseStatusCodes {
  /// Constructor for internal use (like enum)
  ImmunizationEvaluationDoseStatusCodes({this.fhirCode, this.element})
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

  /// ImmunizationEvaluationDoseStatusCodes values
  /// valid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationEvaluationDoseStatusCodes valid =
      ImmunizationEvaluationDoseStatusCodes(
    fhirCode: 'valid',
  );

  /// notvalid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationEvaluationDoseStatusCodes notvalid =
      ImmunizationEvaluationDoseStatusCodes(
    fhirCode: 'notvalid',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationEvaluationDoseStatusCodes elementOnly =
      ImmunizationEvaluationDoseStatusCodes();

  /// List of all enum-like values
  static final List<ImmunizationEvaluationDoseStatusCodes> values = [
    valid,
    notvalid,
  ];

  /// Returns the enum value with an element attached
  ImmunizationEvaluationDoseStatusCodes withElement(Element? newElement) {
    return ImmunizationEvaluationDoseStatusCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ImmunizationEvaluationDoseStatusCodes] from JSON.
  static ImmunizationEvaluationDoseStatusCodes fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationEvaluationDoseStatusCodes.elementOnly
          .withElement(element);
    }
    return ImmunizationEvaluationDoseStatusCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ImmunizationEvaluationDoseStatusCodes.$fhirCode';
}
