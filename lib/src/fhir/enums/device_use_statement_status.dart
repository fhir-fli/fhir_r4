// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// A coded concept indicating the current status of the Device Usage.
@collection
class DeviceUseStatementStatus {
  /// Constructor for internal use (like enum)
  DeviceUseStatementStatus({this.fhirCode, this.element})
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

  /// DeviceUseStatementStatus values
  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceUseStatementStatus active = DeviceUseStatementStatus(
    fhirCode: 'active',
  );

  /// completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceUseStatementStatus completed = DeviceUseStatementStatus(
    fhirCode: 'completed',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceUseStatementStatus entered_in_error =
      DeviceUseStatementStatus(
    fhirCode: 'entered-in-error',
  );

  /// intended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceUseStatementStatus intended = DeviceUseStatementStatus(
    fhirCode: 'intended',
  );

  /// stopped
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceUseStatementStatus stopped = DeviceUseStatementStatus(
    fhirCode: 'stopped',
  );

  /// on_hold
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DeviceUseStatementStatus on_hold = DeviceUseStatementStatus(
    fhirCode: 'on-hold',
  );

  /// For instances where an Element is present but not value

  static final DeviceUseStatementStatus elementOnly =
      DeviceUseStatementStatus();

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
    return DeviceUseStatementStatus(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [DeviceUseStatementStatus] from JSON.
  static DeviceUseStatementStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceUseStatementStatus.elementOnly.withElement(element);
    }
    return DeviceUseStatementStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DeviceUseStatementStatus.$fhirCode';
}
