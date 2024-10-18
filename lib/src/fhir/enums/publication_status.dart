// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The lifecycle status of an artifact.
enum PublicationStatus {
  /// Display: Draft
  /// Definition: This resource is still under development and is not yet considered to be ready for normal use.
  draft('draft'),

  /// Display: Active
  /// Definition: This resource is ready for normal use.
  active('active'),

  /// Display: Retired
  /// Definition: This resource has been withdrawn or superseded and should no longer be used.
  retired('retired'),

  /// Display: Unknown
  /// Definition: The authoring system does not know which of the status values currently applies for this resource. Note: This concept is not to be used for "other" - one of the listed statuses is presumed to apply, it's just not known which one.
  unknown('unknown'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const PublicationStatus(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [PublicationStatus] instances.
  static PublicationStatus fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PublicationStatus.elementOnly.withElement(
        element,
      );
    }
    return PublicationStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  PublicationStatus withElement(Element? newElement) {
    return PublicationStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
