// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Unified Code for Units of Measure (UCUM). This value set includes common UCUM codes for units of distance
@collection
class CommonUCUMCodesForDistance {
  /// Constructor for internal use (like enum)
  CommonUCUMCodesForDistance({this.fhirCode, this.element})
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

  /// CommonUCUMCodesForDistance values
  /// nm
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonUCUMCodesForDistance nm = CommonUCUMCodesForDistance(
    fhirCode: 'nm',
  );

  /// um
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonUCUMCodesForDistance um = CommonUCUMCodesForDistance(
    fhirCode: 'um',
  );

  /// mm
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonUCUMCodesForDistance mm = CommonUCUMCodesForDistance(
    fhirCode: 'mm',
  );

  /// m
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonUCUMCodesForDistance m = CommonUCUMCodesForDistance(
    fhirCode: 'm',
  );

  /// km
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CommonUCUMCodesForDistance km = CommonUCUMCodesForDistance(
    fhirCode: 'km',
  );

  /// For instances where an Element is present but not value

  static final CommonUCUMCodesForDistance elementOnly =
      CommonUCUMCodesForDistance();

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
    return CommonUCUMCodesForDistance(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
    return CommonUCUMCodesForDistance.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CommonUCUMCodesForDistance.$fhirCode';
}
