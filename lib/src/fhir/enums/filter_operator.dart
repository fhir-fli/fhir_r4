// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

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

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const FilterOperator(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [FilterOperator] instances.
  static FilterOperator fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FilterOperator.elementOnly.withElement(element);
    }
    return FilterOperator.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  FilterOperator withElement(Element? newElement) {
    return FilterOperator.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
