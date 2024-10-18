// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A coded concept indicating the current status of the Device Usage.
enum DeviceUseStatementStatus {
  /// Display: Active
  /// Definition: The device is still being used.
  active('active'),

  /// Display: Completed
  /// Definition: The device is no longer being used.
  completed('completed'),

  /// Display: Entered in Error
  /// Definition: The statement was recorded incorrectly.
  entered_in_error('entered-in-error'),

  /// Display: Intended
  /// Definition: The device may be used at some time in the future.
  intended('intended'),

  /// Display: Stopped
  /// Definition: Actions implied by the statement have been permanently halted, before all of them occurred.
  stopped('stopped'),

  /// Display: On Hold
  /// Definition: Actions implied by the statement have been temporarily halted, but are expected to continue later. May also be called "suspended".
  on_hold('on-hold'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const DeviceUseStatementStatus(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [DeviceUseStatementStatus] instances.
  static DeviceUseStatementStatus fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceUseStatementStatus.elementOnly.withElement(
        element,
      );
    }
    return DeviceUseStatementStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  DeviceUseStatementStatus withElement(Element? newElement) {
    return DeviceUseStatementStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
