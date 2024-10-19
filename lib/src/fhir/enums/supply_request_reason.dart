// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The reason why the supply item was requested.
@collection
class SupplyRequestReason {
  /// Constructor for internal use (like enum)
  SupplyRequestReason({this.fhirCode, this.element})
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

  /// SupplyRequestReason values
  /// patient_care
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplyRequestReason patient_care = SupplyRequestReason(
    fhirCode: 'patient-care',
  );

  /// ward_stock
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplyRequestReason ward_stock = SupplyRequestReason(
    fhirCode: 'ward-stock',
  );

  /// For instances where an Element is present but not value

  static final SupplyRequestReason elementOnly = SupplyRequestReason();

  /// List of all enum-like values
  static final List<SupplyRequestReason> values = [
    patient_care,
    ward_stock,
  ];

  /// Returns the enum value with an element attached
  SupplyRequestReason withElement(Element? newElement) {
    return SupplyRequestReason(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SupplyRequestReason] from JSON.
  static SupplyRequestReason fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SupplyRequestReason.elementOnly.withElement(element);
    }
    return SupplyRequestReason.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SupplyRequestReason.$fhirCode';
}
