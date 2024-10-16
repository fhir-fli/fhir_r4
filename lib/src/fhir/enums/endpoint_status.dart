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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const EndpointStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static EndpointStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EndpointStatus.elementOnly.withElement(element);
    }
    return EndpointStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  EndpointStatus withElement(Element? newElement) {
    return EndpointStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
