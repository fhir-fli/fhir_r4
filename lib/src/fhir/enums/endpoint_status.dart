// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The status of the endpoint.
enum EndpointStatus {
  /// Display: Active
  /// Definition: This endpoint is expected to be active and can be used.
  active('active'),

  /// Display: Suspended
  /// Definition: This endpoint is temporarily unavailable.
  suspended('suspended'),

  /// Display: Error
  /// Definition: This endpoint has exceeded connectivity thresholds and is considered in an error state and should no longer be attempted to connect to until corrective action is taken.
  error('error'),

  /// Display: Off
  /// Definition: This endpoint is no longer to be used.
  off('off'),

  /// Display: Entered in error
  /// Definition: This instance should not have been part of this patient's medical record.
  entered_in_error('entered-in-error'),

  /// Display: Test
  /// Definition: This endpoint is not intended for production usage.
  test('test'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const EndpointStatus(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [EndpointStatus] instances.
  static EndpointStatus fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EndpointStatus.elementOnly.withElement(
        element,
      );
    }
    return EndpointStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  EndpointStatus withElement(Element? newElement) {
    return EndpointStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
