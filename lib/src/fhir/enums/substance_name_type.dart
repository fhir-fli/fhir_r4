// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The type of a name given to a substance.
@collection
class SubstanceNameType {
  /// Constructor for internal use (like enum)
  SubstanceNameType({this.fhirCode, this.element})
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

  /// SubstanceNameType values
  /// Systematic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceNameType Systematic = SubstanceNameType(
    fhirCode: 'Systematic',
  );

  /// Scientific
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceNameType Scientific = SubstanceNameType(
    fhirCode: 'Scientific',
  );

  /// Brand
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceNameType Brand = SubstanceNameType(
    fhirCode: 'Brand',
  );

  /// For instances where an Element is present but not value

  static final SubstanceNameType elementOnly = SubstanceNameType();

  /// List of all enum-like values
  static final List<SubstanceNameType> values = [
    Systematic,
    Scientific,
    Brand,
  ];

  /// Returns the enum value with an element attached
  SubstanceNameType withElement(Element? newElement) {
    return SubstanceNameType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SubstanceNameType] from JSON.
  static SubstanceNameType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceNameType.elementOnly.withElement(element);
    }
    return SubstanceNameType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SubstanceNameType.$fhirCode';
}
