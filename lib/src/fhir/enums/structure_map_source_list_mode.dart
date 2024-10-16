import 'package:fhir_r4/fhir_r4.dart';

/// If field is a list, how to manage the source.
enum StructureMapSourceListMode {
  /// Display: First
  /// Definition: Only process this rule for the first in the list.
  first('first'),

  /// Display: All but the first
  /// Definition: Process this rule for all but the first.
  not_first('not_first'),

  /// Display: Last
  /// Definition: Only process this rule for the last in the list.
  last('last'),

  /// Display: All but the last
  /// Definition: Process this rule for all but the last.
  not_last('not_last'),

  /// Display: Enforce only one
  /// Definition: Only process this rule is there is only item.
  only_one('only_one'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const StructureMapSourceListMode(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static StructureMapSourceListMode fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapSourceListMode.elementOnly.withElement(element);
    }
    return StructureMapSourceListMode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  StructureMapSourceListMode withElement(Element? newElement) {
    return StructureMapSourceListMode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
