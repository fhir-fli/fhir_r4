// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of relations between entries.
enum CatalogEntryRelationType {
  /// Display: Triggers
  /// Definition: the related entry represents an activity that may be triggered by the current item.
  triggers('triggers'),

  /// Display: Replaced By
  /// Definition: the related entry represents an item that replaces the current retired item.
  is_replaced_by('is-replaced-by'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const CatalogEntryRelationType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [CatalogEntryRelationType] instances.
  static CatalogEntryRelationType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CatalogEntryRelationType.elementOnly.withElement(element);
    }
    return CatalogEntryRelationType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  CatalogEntryRelationType withElement(Element? newElement) {
    return CatalogEntryRelationType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
