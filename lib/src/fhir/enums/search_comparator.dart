// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// What Search Comparator Codes are supported in search.
enum SearchComparator {
  /// Display: Equals
  /// Definition: the value for the parameter in the resource is equal to the provided value.
  eq('eq'),

  /// Display: Not Equals
  /// Definition: the value for the parameter in the resource is not equal to the provided value.
  ne('ne'),

  /// Display: Greater Than
  /// Definition: the value for the parameter in the resource is greater than the provided value.
  gt('gt'),

  /// Display: Less Than
  /// Definition: the value for the parameter in the resource is less than the provided value.
  lt('lt'),

  /// Display: Greater or Equals
  /// Definition: the value for the parameter in the resource is greater or equal to the provided value.
  ge('ge'),

  /// Display: Less of Equal
  /// Definition: the value for the parameter in the resource is less or equal to the provided value.
  le('le'),

  /// Display: Starts After
  /// Definition: the value for the parameter in the resource starts after the provided value.
  sa('sa'),

  /// Display: Ends Before
  /// Definition: the value for the parameter in the resource ends before the provided value.
  eb('eb'),

  /// Display: Approximately
  /// Definition: the value for the parameter in the resource is approximately the same to the provided value.
  ap('ap'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const SearchComparator(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [SearchComparator] instances.
  static SearchComparator fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchComparator.elementOnly.withElement(element);
    }
    return SearchComparator.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  SearchComparator withElement(Element? newElement) {
    return SearchComparator.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
