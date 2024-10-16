import 'package:fhir_r4/fhir_r4.dart';

/// How resource references can be aggregated.
enum AggregationMode {
  /// Display: Contained
  /// Definition: The reference is a local reference to a contained resource.
  contained('contained'),

  /// Display: Referenced
  /// Definition: The reference to a resource that has to be resolved externally to the resource that includes the reference.
  referenced('referenced'),

  /// Display: Bundled
  /// Definition: The resource the reference points to will be found in the same bundle as the resource that includes the reference.
  bundled('bundled'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const AggregationMode(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static AggregationMode fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AggregationMode.elementOnly.withElement(element);
    }
    return AggregationMode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  AggregationMode withElement(Element? newElement) {
    return AggregationMode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
