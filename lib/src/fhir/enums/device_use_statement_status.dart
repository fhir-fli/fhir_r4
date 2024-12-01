// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A coded concept indicating the current status of the Device Usage.
class DeviceUseStatementStatus {
  // Private constructor for internal use (like enum)
  DeviceUseStatementStatus._(this.fhirCode, {this.element});

  /// Factory constructor to create [DeviceUseStatementStatus] from JSON.
  factory DeviceUseStatementStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceUseStatementStatus.elementOnly.withElement(element);
    }
    return DeviceUseStatementStatus._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// DeviceUseStatementStatus values
  /// active
  static final DeviceUseStatementStatus active = DeviceUseStatementStatus._(
    'active',
  );

  /// completed
  static final DeviceUseStatementStatus completed = DeviceUseStatementStatus._(
    'completed',
  );

  /// entered_in_error
  static final DeviceUseStatementStatus entered_in_error =
      DeviceUseStatementStatus._(
    'entered-in-error',
  );

  /// intended
  static final DeviceUseStatementStatus intended = DeviceUseStatementStatus._(
    'intended',
  );

  /// stopped
  static final DeviceUseStatementStatus stopped = DeviceUseStatementStatus._(
    'stopped',
  );

  /// on_hold
  static final DeviceUseStatementStatus on_hold = DeviceUseStatementStatus._(
    'on-hold',
  );

  /// For instances where an Element is present but not value

  static final DeviceUseStatementStatus elementOnly =
      DeviceUseStatementStatus._('');

  /// List of all enum-like values
  static final List<DeviceUseStatementStatus> values = [
    active,
    completed,
    entered_in_error,
    intended,
    stopped,
    on_hold,
  ];

  /// Returns the enum value with an element attached
  DeviceUseStatementStatus withElement(Element? newElement) {
    return DeviceUseStatementStatus._(fhirCode, element: newElement);
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
