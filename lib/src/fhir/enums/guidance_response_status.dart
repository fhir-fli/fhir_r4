// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const GuidanceResponseStatus(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [GuidanceResponseStatus] instances.
  static GuidanceResponseStatus fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GuidanceResponseStatus.elementOnly.withElement(element);
    }
    return GuidanceResponseStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  GuidanceResponseStatus withElement(Element? newElement) {
    return GuidanceResponseStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
