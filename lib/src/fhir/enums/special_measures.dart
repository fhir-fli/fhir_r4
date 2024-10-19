// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Extra measures defined for a Medicinal Product, such as a requirement to conduct post-authorisation studies.
@collection
class SpecialMeasures {
  /// Constructor for internal use (like enum)
  SpecialMeasures({this.fhirCode, this.element})
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

  /// SpecialMeasures values
  /// Post_authorisationStudies
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SpecialMeasures Post_authorisationStudies = SpecialMeasures(
    fhirCode: 'Post-authorisationStudies',
  );

  /// For instances where an Element is present but not value

  static final SpecialMeasures elementOnly = SpecialMeasures();

  /// List of all enum-like values
  static final List<SpecialMeasures> values = [
    Post_authorisationStudies,
  ];

  /// Returns the enum value with an element attached
  SpecialMeasures withElement(Element? newElement) {
    return SpecialMeasures(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SpecialMeasures] from JSON.
  static SpecialMeasures fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SpecialMeasures.elementOnly.withElement(element);
    }
    return SpecialMeasures.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SpecialMeasures.$fhirCode';
}
