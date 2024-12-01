// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that can be used to indicate special courtesies provided to the patient.
class SpecialCourtesy {
  // Private constructor for internal use (like enum)
  SpecialCourtesy._(this.fhirCode, {this.element});

  /// Factory constructor to create [SpecialCourtesy] from JSON.
  factory SpecialCourtesy.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SpecialCourtesy.elementOnly.withElement(element);
    }
    return SpecialCourtesy._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SpecialCourtesy values
  /// EXT
  static final SpecialCourtesy EXT = SpecialCourtesy._(
    'EXT',
  );

  /// NRM
  static final SpecialCourtesy NRM = SpecialCourtesy._(
    'NRM',
  );

  /// PRF
  static final SpecialCourtesy PRF = SpecialCourtesy._(
    'PRF',
  );

  /// STF
  static final SpecialCourtesy STF = SpecialCourtesy._(
    'STF',
  );

  /// VIP
  static final SpecialCourtesy VIP = SpecialCourtesy._(
    'VIP',
  );

  /// UNK
  static final SpecialCourtesy UNK = SpecialCourtesy._(
    'UNK',
  );

  /// For instances where an Element is present but not value

  static final SpecialCourtesy elementOnly = SpecialCourtesy._('');

  /// List of all enum-like values
  static final List<SpecialCourtesy> values = [
    EXT,
    NRM,
    PRF,
    STF,
    VIP,
    UNK,
  ];

  /// Returns the enum value with an element attached
  SpecialCourtesy withElement(Element? newElement) {
    return SpecialCourtesy._(fhirCode, element: newElement);
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
