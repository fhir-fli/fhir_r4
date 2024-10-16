import 'package:fhir_r4/fhir_r4.dart';

/// The kind of operation to perform as a part of a property based filter.
enum FilterOperator {
  /// Display: Equals
  /// Definition: The specified property of the code equals the provided value.
  eq('='),

  /// Display: Is A (by subsumption)
  /// Definition: Includes all concept ids that have a transitive is-a relationship with the concept Id provided as the value, including the provided concept itself (include descendant codes and self).
  is_a('is-a'),

  /// Display: Descendent Of (by subsumption)
  /// Definition: Includes all concept ids that have a transitive is-a relationship with the concept Id provided as the value, excluding the provided concept itself i.e. include descendant codes only).
  descendent_of('descendent-of'),

  /// Display: Not (Is A) (by subsumption)
  /// Definition: The specified property of the code does not have an is-a relationship with the provided value.
  is_not_a('is-not-a'),

  /// Display: Regular Expression
  /// Definition: The specified property of the code matches the regex specified in the provided value.
  regex('regex'),

  /// Display: In Set
  /// Definition: The specified property of the code is in the set of codes or concepts specified in the provided value (comma separated list).
  in_('in'),

  /// Display: Not in Set
  /// Definition: The specified property of the code is not in the set of codes or concepts specified in the provided value (comma separated list).
  not_in('not-in'),

  /// Display: Generalizes (by Subsumption)
  /// Definition: Includes all concept ids that have a transitive is-a relationship from the concept Id provided as the value, including the provided concept itself (i.e. include ancestor codes and self).
  generalizes('generalizes'),

  /// Display: Exists
  /// Definition: The specified property of the code has at least one value (if the specified value is true; if the specified value is false, then matches when the specified property of the code has no values).
  exists('exists'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const FilterOperator(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static FilterOperator fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FilterOperator.elementOnly.withElement(element);
    }
    return FilterOperator.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  FilterOperator withElement(Element? newElement) {
    return FilterOperator.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
