// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Details of how a designation would be used
@collection
class DesignationUse {
  /// Constructor for internal use (like enum)
  DesignationUse({this.fhirCode, this.element})
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

  /// DesignationUse values
  /// value900000000000003001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DesignationUse value900000000000003001 = DesignationUse(
    fhirCode: '900000000000003001',
  );

  /// value900000000000013009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DesignationUse value900000000000013009 = DesignationUse(
    fhirCode: '900000000000013009',
  );

  /// For instances where an Element is present but not value

  static final DesignationUse elementOnly = DesignationUse();

  /// List of all enum-like values
  static final List<DesignationUse> values = [
    value900000000000003001,
    value900000000000013009,
  ];

  /// Returns the enum value with an element attached
  DesignationUse withElement(Element? newElement) {
    return DesignationUse(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [DesignationUse] from JSON.
  static DesignationUse fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DesignationUse.elementOnly.withElement(element);
    }
    return DesignationUse.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DesignationUse.$fhirCode';
}
