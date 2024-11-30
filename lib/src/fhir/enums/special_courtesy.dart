// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that can be used to indicate special courtesies provided to the patient.
class SpecialCourtesy {
  // Private constructor for internal use (like enum)
  SpecialCourtesy._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SpecialCourtesy values
  /// EXT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SpecialCourtesy EXT = SpecialCourtesy._(
    'EXT',
  );

  /// NRM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SpecialCourtesy NRM = SpecialCourtesy._(
    'NRM',
  );

  /// PRF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SpecialCourtesy PRF = SpecialCourtesy._(
    'PRF',
  );

  /// STF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SpecialCourtesy STF = SpecialCourtesy._(
    'STF',
  );

  /// VIP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SpecialCourtesy VIP = SpecialCourtesy._(
    'VIP',
  );

  /// UNK
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
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

  /// Factory constructor to create [SpecialCourtesy] from JSON.
  static SpecialCourtesy fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SpecialCourtesy.elementOnly.withElement(element);
    }
    return SpecialCourtesy._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
