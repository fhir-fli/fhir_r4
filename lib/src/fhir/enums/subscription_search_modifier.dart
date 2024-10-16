import 'package:fhir_r4/fhir_r4.dart';

/// FHIR search modifiers allowed for use in Subscriptions and SubscriptionTopics.
enum SubscriptionSearchModifier {
  /// Display: =
  /// Definition: Used to match a value according to FHIR Search rules (e.g., Patient/123, Encounter/2002).
  eq('='),

  /// Display: Equal
  /// Definition: The value for the parameter in the resource is equal to the provided value.
  eq_1('eq'),

  /// Display: Not Equal
  /// Definition: The value for the parameter in the resource is not equal to the provided value.
  ne('ne'),

  /// Display: Greater Than
  /// Definition: The value for the parameter in the resource is greater than the provided value.
  gt('gt'),

  /// Display: Less Than
  /// Definition: The value for the parameter in the resource is less than the provided value.
  lt('lt'),

  /// Display: Greater Than or Equal
  /// Definition: The value for the parameter in the resource is greater or equal to the provided value.
  ge('ge'),

  /// Display: Less Than or Equal
  /// Definition: The value for the parameter in the resource is less or equal to the provided value.
  le('le'),

  /// Display: Starts After
  /// Definition: The value for the parameter in the resource starts after the provided value.
  sa('sa'),

  /// Display: Ends Before
  /// Definition: The value for the parameter in the resource ends before the provided value.
  eb('eb'),

  /// Display: Approximately
  /// Definition: The value for the parameter in the resource is approximately the same to the provided value. Note that the recommended value for the approximation is 10% of the stated value (or for a date, 10% of the gap between now and the date), but systems may choose other values where appropriate.
  ap('ap'),

  /// Display: Above
  /// Definition: The search parameter is a concept with the form [system]|[code], and the search parameter tests whether the coding in a resource subsumes the specified search code.
  above('above'),

  /// Display: Below
  /// Definition: The search parameter is a concept with the form [system]|[code], and the search parameter tests whether the coding in a resource is subsumed by the specified search code.
  below('below'),

  /// Display: In
  /// Definition: The search parameter is a member of a Group or List, or the search parameter is a URI (relative or absolute) that identifies a value set, and the search parameter tests whether the value is present in the specified Group, List, or Value Set.
  in_('in'),

  /// Display: Not In
  /// Definition: The search parameter is a member of a Group or List, or the search parameter is a URI (relative or absolute) that identifies a value set, and the search parameter tests whether the value is NOT present in the specified Group, List, or Value Set.
  not_in('not-in'),

  /// Display: Of Type
  /// Definition: The search parameter has the format system|code|value, where the system and code refer to a Identifier.type.coding.system and .code, and match if any of the type codes match. All 3 parts must be present.
  of_type('of-type'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const SubscriptionSearchModifier(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static SubscriptionSearchModifier fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriptionSearchModifier.elementOnly.withElement(element);
    }
    return SubscriptionSearchModifier.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  SubscriptionSearchModifier withElement(Element? newElement) {
    return SubscriptionSearchModifier.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
