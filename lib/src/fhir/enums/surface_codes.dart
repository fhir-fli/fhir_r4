// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a smattering of FDI tooth surface codes.
class SurfaceCodes {
  // Private constructor for internal use (like enum)
  SurfaceCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [SurfaceCodes] from JSON.
  factory SurfaceCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SurfaceCodes.elementOnly.withElement(element);
    }
    return SurfaceCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SurfaceCodes values
  /// M
  static final SurfaceCodes M = SurfaceCodes._(
    'M',
  );

  /// O
  static final SurfaceCodes O = SurfaceCodes._(
    'O',
  );

  /// I
  static final SurfaceCodes I = SurfaceCodes._(
    'I',
  );

  /// D
  static final SurfaceCodes D = SurfaceCodes._(
    'D',
  );

  /// B
  static final SurfaceCodes B = SurfaceCodes._(
    'B',
  );

  /// V
  static final SurfaceCodes V = SurfaceCodes._(
    'V',
  );

  /// L
  static final SurfaceCodes L = SurfaceCodes._(
    'L',
  );

  /// MO
  static final SurfaceCodes MO = SurfaceCodes._(
    'MO',
  );

  /// DO
  static final SurfaceCodes DO = SurfaceCodes._(
    'DO',
  );

  /// DI
  static final SurfaceCodes DI = SurfaceCodes._(
    'DI',
  );

  /// MOD
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

  /// String representation
  @override
  String toString() => fhirCode;
}
