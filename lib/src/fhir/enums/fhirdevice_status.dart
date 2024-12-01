// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The availability status of the device.
class FHIRDeviceStatus {
  // Private constructor for internal use (like enum)
  FHIRDeviceStatus._(this.fhirCode, {this.element});

  /// Factory constructor to create [FHIRDeviceStatus] from JSON.
  factory FHIRDeviceStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRDeviceStatus.elementOnly.withElement(element);
    }
    return FHIRDeviceStatus._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// FHIRDeviceStatus values
  /// active
  static final FHIRDeviceStatus active = FHIRDeviceStatus._(
    'active',
  );

  /// inactive
  static final FHIRDeviceStatus inactive = FHIRDeviceStatus._(
    'inactive',
  );

  /// entered_in_error
  static final FHIRDeviceStatus entered_in_error = FHIRDeviceStatus._(
    'entered-in-error',
  );

  /// unknown
  static final FHIRDeviceStatus unknown = FHIRDeviceStatus._(
    'unknown',
  );

  /// For instances where an Element is present but not value

  static final FHIRDeviceStatus elementOnly = FHIRDeviceStatus._('');

  /// List of all enum-like values
  static final List<FHIRDeviceStatus> values = [
    active,
    inactive,
    entered_in_error,
    unknown,
  ];

  /// Returns the enum value with an element attached
  FHIRDeviceStatus withElement(Element? newElement) {
    return FHIRDeviceStatus._(fhirCode, element: newElement);
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
