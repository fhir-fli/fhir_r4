import 'package:fhir_r4/fhir_r4.dart';

/// A supported modifier for a search parameter.
enum SearchModifierCode {
  /// Display: Missing
  /// Definition: The search parameter returns resources that have a value or not.
  missing('missing'),

  /// Display: Exact
  /// Definition: The search parameter returns resources that have a value that exactly matches the supplied parameter (the whole string, including casing and accents).
  exact('exact'),

  /// Display: Contains
  /// Definition: The search parameter returns resources that include the supplied parameter value anywhere within the field being searched.
  contains('contains'),

  /// Display: Not
  /// Definition: The search parameter returns resources that do not contain a match.
  not('not'),

  /// Display: Text
  /// Definition: The search parameter is processed as a string that searches text associated with the code/value - either CodeableConcept.text, Coding.display, or Identifier.type.text.
  text('text'),

  /// Display: In
  /// Definition: The search parameter is a URI (relative or absolute) that identifies a value set, and the search parameter tests whether the coding is in the specified value set.
  in_('in'),

  /// Display: Not In
  /// Definition: The search parameter is a URI (relative or absolute) that identifies a value set, and the search parameter tests whether the coding is not in the specified value set.
  not_in('not-in'),

  /// Display: Below
  /// Definition: The search parameter tests whether the value in a resource is subsumed by the specified value (is-a, or hierarchical relationships).
  below('below'),

  /// Display: Above
  /// Definition: The search parameter tests whether the value in a resource subsumes the specified value (is-a, or hierarchical relationships).
  above('above'),

  /// Display: Type
  /// Definition: The search parameter only applies to the Resource Type specified as a modifier (e.g. the modifier is not actually :type, but :Patient etc.).
  type('type'),

  /// Display: Identifier
  /// Definition: The search parameter applies to the identifier on the resource, not the reference.
  identifier('identifier'),

  /// Display: Of Type
  /// Definition: The search parameter has the format system|code|value, where the system and code refer to an Identifier.type.coding.system and .code, and match if any of the type codes match. All 3 parts must be present.
  ofType('ofType'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const SearchModifierCode(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static SearchModifierCode fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchModifierCode.elementOnly.withElement(element);
    }
    return SearchModifierCode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  SearchModifierCode withElement(Element? newElement) {
    return SearchModifierCode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
