// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a smattering of FDI tooth surface codes.
class SurfaceCodes {
  // Private constructor for internal use (like enum)
  SurfaceCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SurfaceCodes values
  /// M
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SurfaceCodes M = SurfaceCodes._(
    'M',
  );

  /// O
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SurfaceCodes O = SurfaceCodes._(
    'O',
  );

  /// I
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SurfaceCodes I = SurfaceCodes._(
    'I',
  );

  /// D
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SurfaceCodes D = SurfaceCodes._(
    'D',
  );

  /// B
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SurfaceCodes B = SurfaceCodes._(
    'B',
  );

  /// V
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SurfaceCodes V = SurfaceCodes._(
    'V',
  );

  /// L
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SurfaceCodes L = SurfaceCodes._(
    'L',
  );

  /// MO
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SurfaceCodes MO = SurfaceCodes._(
    'MO',
  );

  /// DO
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SurfaceCodes DO = SurfaceCodes._(
    'DO',
  );

  /// DI
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SurfaceCodes DI = SurfaceCodes._(
    'DI',
  );

  /// MOD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SurfaceCodes MOD = SurfaceCodes._(
    'MOD',
  );

  /// For instances where an Element is present but not value

  static final SurfaceCodes elementOnly = SurfaceCodes._('');

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
    return SurfaceCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
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

  /// String representation
  @override
  String toString() => fhirCode;
}
