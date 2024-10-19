// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set includes sample Missing Tooth Reason codes.
@collection
class MissingToothReasonCodes {
  /// Constructor for internal use (like enum)
  MissingToothReasonCodes({this.fhirCode, this.element})
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

  /// MissingToothReasonCodes values
  /// e
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MissingToothReasonCodes e = MissingToothReasonCodes(
    fhirCode: 'e',
  );

  /// c
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MissingToothReasonCodes c = MissingToothReasonCodes(
    fhirCode: 'c',
  );

  /// u
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MissingToothReasonCodes u = MissingToothReasonCodes(
    fhirCode: 'u',
  );

  /// o
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MissingToothReasonCodes o = MissingToothReasonCodes(
    fhirCode: 'o',
  );

  /// For instances where an Element is present but not value

  static final MissingToothReasonCodes elementOnly = MissingToothReasonCodes();

  /// List of all enum-like values
  static final List<MissingToothReasonCodes> values = [
    e,
    c,
    u,
    o,
  ];

  /// Returns the enum value with an element attached
  MissingToothReasonCodes withElement(Element? newElement) {
    return MissingToothReasonCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MissingToothReasonCodes] from JSON.
  static MissingToothReasonCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MissingToothReasonCodes.elementOnly.withElement(element);
    }
    return MissingToothReasonCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MissingToothReasonCodes.$fhirCode';
}
