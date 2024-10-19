// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Status of the supply delivery.
@collection
class SupplyDeliveryStatus {
  /// Constructor for internal use (like enum)
  SupplyDeliveryStatus({this.fhirCode, this.element})
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

  /// SupplyDeliveryStatus values
  /// in_progress
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplyDeliveryStatus in_progress = SupplyDeliveryStatus(
    fhirCode: 'in-progress',
  );

  /// completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplyDeliveryStatus completed = SupplyDeliveryStatus(
    fhirCode: 'completed',
  );

  /// abandoned
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplyDeliveryStatus abandoned = SupplyDeliveryStatus(
    fhirCode: 'abandoned',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplyDeliveryStatus entered_in_error = SupplyDeliveryStatus(
    fhirCode: 'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final SupplyDeliveryStatus elementOnly = SupplyDeliveryStatus();

  /// List of all enum-like values
  static final List<SupplyDeliveryStatus> values = [
    in_progress,
    completed,
    abandoned,
    entered_in_error,
  ];

  /// Returns the enum value with an element attached
  SupplyDeliveryStatus withElement(Element? newElement) {
    return SupplyDeliveryStatus(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SupplyDeliveryStatus] from JSON.
  static SupplyDeliveryStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SupplyDeliveryStatus.elementOnly.withElement(element);
    }
    return SupplyDeliveryStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SupplyDeliveryStatus.$fhirCode';
}
