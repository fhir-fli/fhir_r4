// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Indicates the state of the consent.
enum ConsentState {
  /// Display: Pending
  /// Definition: The consent is in development or awaiting use but is not yet intended to be acted upon.
  draft('draft'),

  /// Display: Proposed
  /// Definition: The consent has been proposed but not yet agreed to by all parties. The negotiation stage.
  proposed('proposed'),

  /// Display: Active
  /// Definition: The consent is to be followed and enforced.
  active('active'),

  /// Display: Rejected
  /// Definition: The consent has been rejected by one or more of the parties.
  rejected('rejected'),

  /// Display: Inactive
  /// Definition: The consent is terminated or replaced.
  inactive('inactive'),

  /// Display: Entered in Error
  /// Definition: The consent was created wrongly (e.g. wrong patient) and should be ignored.
  entered_in_error('entered-in-error'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ConsentState(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ConsentState] instances.
  static ConsentState fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentState.elementOnly.withElement(
        element,
      );
    }
    return ConsentState.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ConsentState withElement(Element? newElement) {
    return ConsentState.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
