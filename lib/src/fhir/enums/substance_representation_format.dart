// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// A format of a substance representation.
@collection
class SubstanceRepresentationFormat {
  /// Constructor for internal use (like enum)
  SubstanceRepresentationFormat({this.fhirCode, this.element})
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

  /// SubstanceRepresentationFormat values
  /// InChI
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceRepresentationFormat InChI =
      SubstanceRepresentationFormat(
    fhirCode: 'InChI',
  );

  /// SMILES
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceRepresentationFormat SMILES =
      SubstanceRepresentationFormat(
    fhirCode: 'SMILES',
  );

  /// MOLFILE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceRepresentationFormat MOLFILE =
      SubstanceRepresentationFormat(
    fhirCode: 'MOLFILE',
  );

  /// CDX
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceRepresentationFormat CDX =
      SubstanceRepresentationFormat(
    fhirCode: 'CDX',
  );

  /// SDF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceRepresentationFormat SDF =
      SubstanceRepresentationFormat(
    fhirCode: 'SDF',
  );

  /// PDB
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceRepresentationFormat PDB =
      SubstanceRepresentationFormat(
    fhirCode: 'PDB',
  );

  /// mmCIF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceRepresentationFormat mmCIF =
      SubstanceRepresentationFormat(
    fhirCode: 'mmCIF',
  );

  /// For instances where an Element is present but not value

  static final SubstanceRepresentationFormat elementOnly =
      SubstanceRepresentationFormat();

  /// List of all enum-like values
  static final List<SubstanceRepresentationFormat> values = [
    InChI,
    SMILES,
    MOLFILE,
    CDX,
    SDF,
    PDB,
    mmCIF,
  ];

  /// Returns the enum value with an element attached
  SubstanceRepresentationFormat withElement(Element? newElement) {
    return SubstanceRepresentationFormat(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SubstanceRepresentationFormat] from JSON.
  static SubstanceRepresentationFormat fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceRepresentationFormat.elementOnly.withElement(element);
    }
    return SubstanceRepresentationFormat.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SubstanceRepresentationFormat.$fhirCode';
}
