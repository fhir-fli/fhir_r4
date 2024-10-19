// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The type of a name given to a substance.
@collection
class SubstanceRepresentationType {
  /// Constructor for internal use (like enum)
  SubstanceRepresentationType({this.fhirCode, this.element})
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

  /// SubstanceRepresentationType values
  /// Systematic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceRepresentationType Systematic =
      SubstanceRepresentationType(
    fhirCode: 'Systematic',
  );

  /// Scientific
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceRepresentationType Scientific =
      SubstanceRepresentationType(
    fhirCode: 'Scientific',
  );

  /// Brand
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceRepresentationType Brand = SubstanceRepresentationType(
    fhirCode: 'Brand',
  );

  /// For instances where an Element is present but not value

  static final SubstanceRepresentationType elementOnly =
      SubstanceRepresentationType();

  /// List of all enum-like values
  static final List<SubstanceRepresentationType> values = [
    Systematic,
    Scientific,
    Brand,
  ];

  /// Returns the enum value with an element attached
  SubstanceRepresentationType withElement(Element? newElement) {
    return SubstanceRepresentationType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SubstanceRepresentationType] from JSON.
  static SubstanceRepresentationType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceRepresentationType.elementOnly.withElement(element);
    }
    return SubstanceRepresentationType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SubstanceRepresentationType.$fhirCode';
}
