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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const PublicationStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static PublicationStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PublicationStatus.elementOnly.withElement(element);
    }
    return PublicationStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  PublicationStatus withElement(Element? newElement) {
    return PublicationStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
