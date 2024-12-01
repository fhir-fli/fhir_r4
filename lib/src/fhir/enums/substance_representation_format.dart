// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A format of a substance representation.
class SubstanceRepresentationFormat {
  // Private constructor for internal use (like enum)
  SubstanceRepresentationFormat._(this.fhirCode, {this.element});

  /// Factory constructor to create [SubstanceRepresentationFormat] from JSON.
  factory SubstanceRepresentationFormat.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceRepresentationFormat.elementOnly.withElement(element);
    }
    return SubstanceRepresentationFormat._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SubstanceRepresentationFormat values
  /// InChI
  static final SubstanceRepresentationFormat InChI =
      SubstanceRepresentationFormat._(
    'InChI',
  );

  /// SMILES
  static final SubstanceRepresentationFormat SMILES =
      SubstanceRepresentationFormat._(
    'SMILES',
  );

  /// MOLFILE
  static final SubstanceRepresentationFormat MOLFILE =
      SubstanceRepresentationFormat._(
    'MOLFILE',
  );

  /// CDX
  static final SubstanceRepresentationFormat CDX =
      SubstanceRepresentationFormat._(
    'CDX',
  );

  /// SDF
  static final SubstanceRepresentationFormat SDF =
      SubstanceRepresentationFormat._(
    'SDF',
  );

  /// PDB
  static final SubstanceRepresentationFormat PDB =
      SubstanceRepresentationFormat._(
    'PDB',
  );

  /// mmCIF
  static final SubstanceRepresentationFormat mmCIF =
      SubstanceRepresentationFormat._(
    'mmCIF',
  );

  /// For instances where an Element is present but not value

  static final SubstanceRepresentationFormat elementOnly =
      SubstanceRepresentationFormat._('');

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
    return SubstanceRepresentationFormat._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
