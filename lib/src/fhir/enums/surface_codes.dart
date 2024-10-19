// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set includes a smattering of FDI tooth surface codes.
@collection
class SurfaceCodes {
  /// Constructor for internal use (like enum)
  SurfaceCodes({this.fhirCode, this.element})
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

  /// SurfaceCodes values
  /// M
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SurfaceCodes M = SurfaceCodes(
    fhirCode: 'M',
  );

  /// O
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SurfaceCodes O = SurfaceCodes(
    fhirCode: 'O',
  );

  /// I
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SurfaceCodes I = SurfaceCodes(
    fhirCode: 'I',
  );

  /// D
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SurfaceCodes D = SurfaceCodes(
    fhirCode: 'D',
  );

  /// B
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SurfaceCodes B = SurfaceCodes(
    fhirCode: 'B',
  );

  /// V
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SurfaceCodes V = SurfaceCodes(
    fhirCode: 'V',
  );

  /// L
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SurfaceCodes L = SurfaceCodes(
    fhirCode: 'L',
  );

  /// MO
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SurfaceCodes MO = SurfaceCodes(
    fhirCode: 'MO',
  );

  /// DO
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SurfaceCodes DO = SurfaceCodes(
    fhirCode: 'DO',
  );

  /// DI
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SurfaceCodes DI = SurfaceCodes(
    fhirCode: 'DI',
  );

  /// MOD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SurfaceCodes MOD = SurfaceCodes(
    fhirCode: 'MOD',
  );

  /// For instances where an Element is present but not value

  static final SurfaceCodes elementOnly = SurfaceCodes();

  /// List of all enum-like values
  static final List<SurfaceCodes> values = [
    M,
    O,
    I,
    D,
    B,
    V,
    L,
    MO,
    DO,
    DI,
    MOD,
  ];

  /// Returns the enum value with an element attached
  SurfaceCodes withElement(Element? newElement) {
    return SurfaceCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SurfaceCodes] from JSON.
  static SurfaceCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SurfaceCodes.elementOnly.withElement(element);
    }
    return SurfaceCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SurfaceCodes.$fhirCode';
}
