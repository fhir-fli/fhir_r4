// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Unified Code for Units of Measure (UCUM). This value set includes common UCUM codes for units of distance
class CommonUCUMCodesForDistance {
  // Private constructor for internal use (like enum)
  CommonUCUMCodesForDistance._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// CommonUCUMCodesForDistance values
  /// nm
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonUCUMCodesForDistance nm = CommonUCUMCodesForDistance._(
    'nm',
  );

  /// um
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonUCUMCodesForDistance um = CommonUCUMCodesForDistance._(
    'um',
  );

  /// mm
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonUCUMCodesForDistance mm = CommonUCUMCodesForDistance._(
    'mm',
  );

  /// m
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonUCUMCodesForDistance m = CommonUCUMCodesForDistance._(
    'm',
  );

  /// km
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonUCUMCodesForDistance km = CommonUCUMCodesForDistance._(
    'km',
  );

  /// For instances where an Element is present but not value

  static final CommonUCUMCodesForDistance elementOnly =
      CommonUCUMCodesForDistance._('');

  /// List of all enum-like values
  static final List<CommonUCUMCodesForDistance> values = [
    nm,
    um,
    mm,
    m,
    km,
  ];

  /// Returns the enum value with an element attached
  CommonUCUMCodesForDistance withElement(Element? newElement) {
    return CommonUCUMCodesForDistance._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [CommonUCUMCodesForDistance] from JSON.
  static CommonUCUMCodesForDistance fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommonUCUMCodesForDistance.elementOnly.withElement(element);
    }
    return CommonUCUMCodesForDistance._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
