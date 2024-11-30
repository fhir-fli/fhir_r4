// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Unified Code for Units of Measure (UCUM). This value set includes all UCUM codes
class CommonUCUMCodesForDuration {
  // Private constructor for internal use (like enum)
  CommonUCUMCodesForDuration._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// CommonUCUMCodesForDuration values
  /// ms
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonUCUMCodesForDuration ms = CommonUCUMCodesForDuration._(
    'ms',
  );

  /// s
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonUCUMCodesForDuration s = CommonUCUMCodesForDuration._(
    's',
  );

  /// min
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonUCUMCodesForDuration min = CommonUCUMCodesForDuration._(
    'min',
  );

  /// h
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonUCUMCodesForDuration h = CommonUCUMCodesForDuration._(
    'h',
  );

  /// d
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonUCUMCodesForDuration d = CommonUCUMCodesForDuration._(
    'd',
  );

  /// wk
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonUCUMCodesForDuration wk = CommonUCUMCodesForDuration._(
    'wk',
  );

  /// mo
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonUCUMCodesForDuration mo = CommonUCUMCodesForDuration._(
    'mo',
  );

  /// a
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonUCUMCodesForDuration a = CommonUCUMCodesForDuration._(
    'a',
  );

  /// For instances where an Element is present but not value

  static final CommonUCUMCodesForDuration elementOnly =
      CommonUCUMCodesForDuration._('');

  /// List of all enum-like values
  static final List<CommonUCUMCodesForDuration> values = [
    ms,
    s,
    min,
    h,
    d,
    wk,
    mo,
    a,
  ];

  /// Returns the enum value with an element attached
  CommonUCUMCodesForDuration withElement(Element? newElement) {
    return CommonUCUMCodesForDuration._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [CommonUCUMCodesForDuration] from JSON.
  static CommonUCUMCodesForDuration fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommonUCUMCodesForDuration.elementOnly.withElement(element);
    }
    return CommonUCUMCodesForDuration._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
