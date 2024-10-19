// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the reason why a dose of vaccine was administered. This value set is provided as a suggestive example.
@collection
class ImmunizationReasonCodes {
  /// Constructor for internal use (like enum)
  ImmunizationReasonCodes({this.fhirCode, this.element})
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

  /// ImmunizationReasonCodes values
  /// value429060002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationReasonCodes value429060002 = ImmunizationReasonCodes(
    fhirCode: '429060002',
  );

  /// value281657000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ImmunizationReasonCodes value281657000 = ImmunizationReasonCodes(
    fhirCode: '281657000',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationReasonCodes elementOnly = ImmunizationReasonCodes();

  /// List of all enum-like values
  static final List<ImmunizationReasonCodes> values = [
    value429060002,
    value281657000,
  ];

  /// Returns the enum value with an element attached
  ImmunizationReasonCodes withElement(Element? newElement) {
    return ImmunizationReasonCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ImmunizationReasonCodes] from JSON.
  static ImmunizationReasonCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationReasonCodes.elementOnly.withElement(element);
    }
    return ImmunizationReasonCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ImmunizationReasonCodes.$fhirCode';
}
