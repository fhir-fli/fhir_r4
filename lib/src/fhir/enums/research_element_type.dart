// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The possible types of research elements (E.g. Population, Exposure, Outcome).
@collection
class ResearchElementType {
  /// Constructor for internal use (like enum)
  ResearchElementType({this.fhirCode, this.element})
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

  /// ResearchElementType values
  /// population
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchElementType population = ResearchElementType(
    fhirCode: 'population',
  );

  /// exposure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchElementType exposure = ResearchElementType(
    fhirCode: 'exposure',
  );

  /// outcome
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResearchElementType outcome = ResearchElementType(
    fhirCode: 'outcome',
  );

  /// For instances where an Element is present but not value

  static final ResearchElementType elementOnly = ResearchElementType();

  /// List of all enum-like values
  static final List<ResearchElementType> values = [
    population,
    exposure,
    outcome,
  ];

  /// Returns the enum value with an element attached
  ResearchElementType withElement(Element? newElement) {
    return ResearchElementType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ResearchElementType] from JSON.
  static ResearchElementType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchElementType.elementOnly.withElement(element);
    }
    return ResearchElementType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ResearchElementType.$fhirCode';
}
