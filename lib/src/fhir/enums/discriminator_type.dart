import 'package:fhir_r4/fhir_r4.dart';

/// How an element value is interpreted when discrimination is evaluated.
enum DiscriminatorType {
  /// Display: Value
  /// Definition: The slices have different values in the nominated element.
  value('value'),

  /// Display: Exists
  /// Definition: The slices are differentiated by the presence or absence of the nominated element.
  exists('exists'),

  /// Display: Pattern
  /// Definition: The slices have different values in the nominated element, as determined by testing them against the applicable ElementDefinition.pattern[x].
  pattern('pattern'),

  /// Display: Type
  /// Definition: The slices are differentiated by type of the nominated element.
  type('type'),

  /// Display: Profile
  /// Definition: The slices are differentiated by conformance of the nominated element to a specified profile. Note that if the path specifies .resolve() then the profile is the target profile on the reference. In this case, validation by the possible profiles is required to differentiate the slices.
  profile('profile'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const DiscriminatorType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static DiscriminatorType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DiscriminatorType.elementOnly.withElement(element);
    }
    return DiscriminatorType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  DiscriminatorType withElement(Element? newElement) {
    return DiscriminatorType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
