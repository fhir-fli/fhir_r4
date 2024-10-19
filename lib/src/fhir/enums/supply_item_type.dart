// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value sets refers to a specific supply item.
@collection
class SupplyItemType {
  /// Constructor for internal use (like enum)
  SupplyItemType({this.fhirCode, this.element})
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

  /// SupplyItemType values
  /// medication
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplyItemType medication = SupplyItemType(
    fhirCode: 'medication',
  );

  /// device
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplyItemType device = SupplyItemType(
    fhirCode: 'device',
  );

  /// For instances where an Element is present but not value

  static final SupplyItemType elementOnly = SupplyItemType();

  /// List of all enum-like values
  static final List<SupplyItemType> values = [
    medication,
    device,
  ];

  /// Returns the enum value with an element attached
  SupplyItemType withElement(Element? newElement) {
    return SupplyItemType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SupplyItemType] from JSON.
  static SupplyItemType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SupplyItemType.elementOnly.withElement(element);
    }
    return SupplyItemType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SupplyItemType.$fhirCode';
}
