// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The quality standard, established benchmark, to which a substance complies.
@collection
class SubstanceGrade {
  /// Constructor for internal use (like enum)
  SubstanceGrade({this.fhirCode, this.element})
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

  /// SubstanceGrade values
  /// USP_NF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceGrade USP_NF = SubstanceGrade(
    fhirCode: 'USP-NF',
  );

  /// Ph_Eur
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceGrade Ph_Eur = SubstanceGrade(
    fhirCode: 'Ph.Eur',
  );

  /// JP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceGrade JP = SubstanceGrade(
    fhirCode: 'JP',
  );

  /// BP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceGrade BP = SubstanceGrade(
    fhirCode: 'BP',
  );

  /// CompanyStandard
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceGrade CompanyStandard = SubstanceGrade(
    fhirCode: 'CompanyStandard',
  );

  /// For instances where an Element is present but not value

  static final SubstanceGrade elementOnly = SubstanceGrade();

  /// List of all enum-like values
  static final List<SubstanceGrade> values = [
    USP_NF,
    Ph_Eur,
    JP,
    BP,
    CompanyStandard,
  ];

  /// Returns the enum value with an element attached
  SubstanceGrade withElement(Element? newElement) {
    return SubstanceGrade(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SubstanceGrade] from JSON.
  static SubstanceGrade fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceGrade.elementOnly.withElement(element);
    }
    return SubstanceGrade.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SubstanceGrade.$fhirCode';
}
