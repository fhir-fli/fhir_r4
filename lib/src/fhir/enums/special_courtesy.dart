// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set defines a set of codes that can be used to indicate special courtesies provided to the patient.
@collection
class SpecialCourtesy {
  /// Constructor for internal use (like enum)
  SpecialCourtesy({this.fhirCode, this.element})
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

  /// SpecialCourtesy values
  /// EXT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SpecialCourtesy EXT = SpecialCourtesy(
    fhirCode: 'EXT',
  );

  /// NRM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SpecialCourtesy NRM = SpecialCourtesy(
    fhirCode: 'NRM',
  );

  /// PRF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SpecialCourtesy PRF = SpecialCourtesy(
    fhirCode: 'PRF',
  );

  /// STF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SpecialCourtesy STF = SpecialCourtesy(
    fhirCode: 'STF',
  );

  /// VIP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SpecialCourtesy VIP = SpecialCourtesy(
    fhirCode: 'VIP',
  );

  /// UNK
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SpecialCourtesy UNK = SpecialCourtesy(
    fhirCode: 'UNK',
  );

  /// For instances where an Element is present but not value

  static final SpecialCourtesy elementOnly = SpecialCourtesy();

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
    return SpecialCourtesy(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
    return SpecialCourtesy.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SpecialCourtesy.$fhirCode';
}
