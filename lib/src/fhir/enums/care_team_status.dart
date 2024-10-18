// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Indicates the status of the care team.
enum CareTeamStatus {
  /// Display: Proposed
  /// Definition: The care team has been drafted and proposed, but not yet participating in the coordination and delivery of patient care.
  proposed('proposed'),

  /// Display: Active
  /// Definition: The care team is currently participating in the coordination and delivery of care.
  active('active'),

  /// Display: Suspended
  /// Definition: The care team is temporarily on hold or suspended and not participating in the coordination and delivery of care.
  suspended('suspended'),

  /// Display: Inactive
  /// Definition: The care team was, but is no longer, participating in the coordination and delivery of care.
  inactive('inactive'),

  /// Display: Entered in Error
  /// Definition: The care team should have never existed.
  entered_in_error('entered-in-error'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const CareTeamStatus(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [CareTeamStatus] instances.
  static CareTeamStatus fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CareTeamStatus.elementOnly.withElement(element);
    }
    return CareTeamStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  CareTeamStatus withElement(Element? newElement) {
    return CareTeamStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
