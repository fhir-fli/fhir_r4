// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Missing Tooth Reason codes.
class MissingToothReasonCodes {
  // Private constructor for internal use (like enum)
  MissingToothReasonCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [MissingToothReasonCodes] from JSON.
  factory MissingToothReasonCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MissingToothReasonCodes.elementOnly.withElement(element);
    }
    return MissingToothReasonCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MissingToothReasonCodes values
  /// e
  static final MissingToothReasonCodes e = MissingToothReasonCodes._(
    'e',
  );

  /// c
  static final MissingToothReasonCodes c = MissingToothReasonCodes._(
    'c',
  );

  /// u
  static final MissingToothReasonCodes u = MissingToothReasonCodes._(
    'u',
  );

  /// o
  static final MissingToothReasonCodes o = MissingToothReasonCodes._(
    'o',
  );

  /// For instances where an Element is present but not value

  static final MissingToothReasonCodes elementOnly =
      MissingToothReasonCodes._('');

  /// List of all enum-like values
  static final List<MissingToothReasonCodes> values = [
    e,
    c,
    u,
    o,
  ];

  /// Returns the enum value with an element attached
  MissingToothReasonCodes withElement(Element? newElement) {
    return MissingToothReasonCodes._(fhirCode, element: newElement);
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
