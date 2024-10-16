import 'package:fhir_r4/fhir_r4.dart';

/// Indicates whether a resource instance represents a specific location or a class of locations.
enum LocationMode {
  /// Display: Instance
  /// Definition: The Location resource represents a specific instance of a location (e.g. Operating Theatre 1A).
  instance('instance'),

  /// Display: Kind
  /// Definition: The Location represents a class of locations (e.g. Any Operating Theatre) although this class of locations could be constrained within a specific boundary (such as organization, or parent location, address etc.).
  kind('kind'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const LocationMode(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static LocationMode fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LocationMode.elementOnly.withElement(element);
    }
    return LocationMode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  LocationMode withElement(Element? newElement) {
    return LocationMode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
