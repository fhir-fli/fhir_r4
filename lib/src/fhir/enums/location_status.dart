import 'package:fhir_r4/fhir_r4.dart';

/// Indicates whether the location is still in use.
enum LocationStatus {
  /// Display: Active
  /// Definition: The location is operational.
  active('active'),

  /// Display: Suspended
  /// Definition: The location is temporarily closed.
  suspended('suspended'),

  /// Display: Inactive
  /// Definition: The location is no longer used.
  inactive('inactive'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const LocationStatus(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static LocationStatus fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LocationStatus.elementOnly.withElement(element);
    }
    return LocationStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  LocationStatus withElement(Element? newElement) {
    return LocationStatus.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
