// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// High-level categorization of the definition, used for searching, sorting, and filtering.
@collection
class DefinitionTopic {
  /// Constructor for internal use (like enum)
  DefinitionTopic({this.fhirCode, this.element})
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

  /// DefinitionTopic values
  /// treatment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DefinitionTopic treatment = DefinitionTopic(
    fhirCode: 'treatment',
  );

  /// education
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DefinitionTopic education = DefinitionTopic(
    fhirCode: 'education',
  );

  /// assessment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DefinitionTopic assessment = DefinitionTopic(
    fhirCode: 'assessment',
  );

  /// For instances where an Element is present but not value

  static final DefinitionTopic elementOnly = DefinitionTopic();

  /// List of all enum-like values
  static final List<DefinitionTopic> values = [
    treatment,
    education,
    assessment,
  ];

  /// Returns the enum value with an element attached
  DefinitionTopic withElement(Element? newElement) {
    return DefinitionTopic(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [DefinitionTopic] from JSON.
  static DefinitionTopic fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DefinitionTopic.elementOnly.withElement(element);
    }
    return DefinitionTopic.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DefinitionTopic.$fhirCode';
}
