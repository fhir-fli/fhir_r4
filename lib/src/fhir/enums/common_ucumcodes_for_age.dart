// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Unified Code for Units of Measure (UCUM). This value set includes all UCUM codes
@collection
class CommonUCUMCodesForAge {
  /// Constructor for internal use (like enum)
  CommonUCUMCodesForAge({this.fhirCode, this.element})
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

  /// CommonUCUMCodesForAge values
  /// min
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonUCUMCodesForAge min = CommonUCUMCodesForAge(
    fhirCode: 'min',
  );

  /// h
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonUCUMCodesForAge h = CommonUCUMCodesForAge(
    fhirCode: 'h',
  );

  /// d
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonUCUMCodesForAge d = CommonUCUMCodesForAge(
    fhirCode: 'd',
  );

  /// wk
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonUCUMCodesForAge wk = CommonUCUMCodesForAge(
    fhirCode: 'wk',
  );

  /// mo
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonUCUMCodesForAge mo = CommonUCUMCodesForAge(
    fhirCode: 'mo',
  );

  /// a
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonUCUMCodesForAge a = CommonUCUMCodesForAge(
    fhirCode: 'a',
  );

  /// For instances where an Element is present but not value

  static final CommonUCUMCodesForAge elementOnly = CommonUCUMCodesForAge();

  /// List of all enum-like values
  static final List<CommonUCUMCodesForAge> values = [
    min,
    h,
    d,
    wk,
    mo,
    a,
  ];

  /// Returns the enum value with an element attached
  CommonUCUMCodesForAge withElement(Element? newElement) {
    return CommonUCUMCodesForAge(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [CommonUCUMCodesForAge] from JSON.
  static CommonUCUMCodesForAge fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommonUCUMCodesForAge.elementOnly.withElement(element);
    }
    return CommonUCUMCodesForAge.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CommonUCUMCodesForAge.$fhirCode';
}
