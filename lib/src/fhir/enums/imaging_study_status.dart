// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The status of the ImagingStudy.
enum ImagingStudyStatus {
  /// Display: Registered
  /// Definition: The existence of the imaging study is registered, but there is nothing yet available.
  registered('registered'),

  /// Display: Available
  /// Definition: At least one instance has been associated with this imaging study.
  available('available'),

  /// Display: Cancelled
  /// Definition: The imaging study is unavailable because the imaging study was not started or not completed (also sometimes called "aborted").
  cancelled('cancelled'),

  /// Display: Entered in Error
  /// Definition: The imaging study has been withdrawn following a previous final release. This electronic record should never have existed, though it is possible that real-world decisions were based on it. (If real-world activity has occurred, the status should be "cancelled" rather than "entered-in-error".).
  entered_in_error('entered-in-error'),

  /// Display: Unknown
  /// Definition: The system does not know which of the status values currently applies for this request. Note: This concept is not to be used for "other" - one of the listed statuses is presumed to apply, it's just not known which one.
  unknown('unknown'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ImagingStudyStatus(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ImagingStudyStatus] instances.
  static ImagingStudyStatus fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImagingStudyStatus.elementOnly.withElement(
        element,
      );
    }
    return ImagingStudyStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ImagingStudyStatus withElement(Element? newElement) {
    return ImagingStudyStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
