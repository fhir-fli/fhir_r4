// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes providing the status of an observation.
enum ObservationStatus {
  /// Display: Registered
  /// Definition: The existence of the observation is registered, but there is no result yet available.
  registered('registered'),

  /// Display: Preliminary
  /// Definition: This is an initial or interim observation: data may be incomplete or unverified.
  preliminary('preliminary'),

  /// Display: Final
  /// Definition: The observation is complete and there are no further actions needed. Additional information such "released", "signed", etc would be represented using [Provenance](provenance.html) which provides not only the act but also the actors and dates and other related data. These act states would be associated with an observation status of `preliminary` until they are all completed and then a status of `final` would be applied.
  final_('final'),

  /// Display: Amended
  /// Definition: Subsequent to being Final, the observation has been modified subsequent. This includes updates/new information and corrections.
  amended('amended'),

  /// Display: Corrected
  /// Definition: Subsequent to being Final, the observation has been modified to correct an error in the test result.
  corrected('corrected'),

  /// Display: Cancelled
  /// Definition: The observation is unavailable because the measurement was not started or not completed (also sometimes called "aborted").
  cancelled('cancelled'),

  /// Display: Entered in Error
  /// Definition: The observation has been withdrawn following previous final release. This electronic record should never have existed, though it is possible that real-world decisions were based on it. (If real-world activity has occurred, the status should be "cancelled" rather than "entered-in-error".).
  entered_in_error('entered-in-error'),

  /// Display: Unknown
  /// Definition: The authoring/source system does not know which of the status values currently applies for this observation. Note: This concept is not to be used for "other" - one of the listed statuses is presumed to apply, but the authoring/source system does not know which.
  unknown('unknown'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ObservationStatus(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ObservationStatus] instances.
  static ObservationStatus fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationStatus.elementOnly.withElement(
        element,
      );
    }
    return ObservationStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ObservationStatus withElement(Element? newElement) {
    return ObservationStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
