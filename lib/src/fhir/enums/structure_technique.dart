// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The method used to elucidate the structure or characterization of the drug substance.
@collection
class StructureTechnique {
  /// Constructor for internal use (like enum)
  StructureTechnique({this.fhirCode, this.element})
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

  /// StructureTechnique values
  /// X_Ray
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureTechnique X_Ray = StructureTechnique(
    fhirCode: 'X-Ray',
  );

  /// HPLC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureTechnique HPLC = StructureTechnique(
    fhirCode: 'HPLC',
  );

  /// NMR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureTechnique NMR = StructureTechnique(
    fhirCode: 'NMR',
  );

  /// PeptideMapping
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureTechnique PeptideMapping = StructureTechnique(
    fhirCode: 'PeptideMapping',
  );

  /// LigandBindingAssay
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureTechnique LigandBindingAssay = StructureTechnique(
    fhirCode: 'LigandBindingAssay',
  );

  /// For instances where an Element is present but not value

  static final StructureTechnique elementOnly = StructureTechnique();

  /// List of all enum-like values
  static final List<StructureTechnique> values = [
    X_Ray,
    HPLC,
    NMR,
    PeptideMapping,
    LigandBindingAssay,
  ];

  /// Returns the enum value with an element attached
  StructureTechnique withElement(Element? newElement) {
    return StructureTechnique(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [StructureTechnique] from JSON.
  static StructureTechnique fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureTechnique.elementOnly.withElement(element);
    }
    return StructureTechnique.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'StructureTechnique.$fhirCode';
}
