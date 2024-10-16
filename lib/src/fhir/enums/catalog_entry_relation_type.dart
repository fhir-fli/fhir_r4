import 'package:fhir_r4/fhir_r4.dart';

/// The type of relations between entries.
enum CatalogEntryRelationType {
  /// Display: Triggers
  /// Definition: the related entry represents an activity that may be triggered by the current item.
  triggers('triggers'),

  /// Display: Replaced By
  /// Definition: the related entry represents an item that replaces the current retired item.
  is_replaced_by('is-replaced-by'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const CatalogEntryRelationType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static CatalogEntryRelationType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CatalogEntryRelationType.elementOnly.withElement(element);
    }
    return CatalogEntryRelationType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  CatalogEntryRelationType withElement(Element? newElement) {
    return CatalogEntryRelationType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
