import 'package:fhir_r4/fhir_r4.dart';

/// The status of a guidance response.
enum GuidanceResponseStatus {
  /// Display: Success
  /// Definition: The request was processed successfully.
  success('success'),

  /// Display: Data Requested
  /// Definition: The request was processed successfully, but more data may result in a more complete evaluation.
  data_requested('data-requested'),

  /// Display: Data Required
  /// Definition: The request was processed, but more data is required to complete the evaluation.
  data_required('data-required'),

  /// Display: In Progress
  /// Definition: The request is currently being processed.
  in_progress('in-progress'),

  /// Display: Failure
  /// Definition: The request was not processed successfully.
  failure('failure'),

  /// Display: Entered In Error
  /// Definition: The response was entered in error.
  entered_in_error('entered-in-error'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const GuidanceResponseStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static GuidanceResponseStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GuidanceResponseStatus.elementOnly.withElement(element);
    }
    return GuidanceResponseStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  GuidanceResponseStatus withElement(Element? newElement) {
    return GuidanceResponseStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
