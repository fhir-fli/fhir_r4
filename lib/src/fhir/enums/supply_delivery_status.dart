// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Status of the supply delivery.
class SupplyDeliveryStatus {
  // Private constructor for internal use (like enum)
  SupplyDeliveryStatus._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SupplyDeliveryStatus values
  /// in_progress
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplyDeliveryStatus in_progress = SupplyDeliveryStatus._(
    'in-progress',
  );

  /// completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplyDeliveryStatus completed = SupplyDeliveryStatus._(
    'completed',
  );

  /// abandoned
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplyDeliveryStatus abandoned = SupplyDeliveryStatus._(
    'abandoned',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SupplyDeliveryStatus entered_in_error = SupplyDeliveryStatus._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final SupplyDeliveryStatus elementOnly = SupplyDeliveryStatus._('');

  /// List of all enum-like values
  static final List<SupplyDeliveryStatus> values = [
    in_progress,
    completed,
    abandoned,
    entered_in_error,
  ];

  /// Returns the enum value with an element attached
  SupplyDeliveryStatus withElement(Element? newElement) {
    return SupplyDeliveryStatus._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
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
