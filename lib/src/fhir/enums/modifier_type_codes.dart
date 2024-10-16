import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Modifier type codes.
enum ModifierTypeCodes {
  /// Display: Repair of prior service or installation
  /// Definition: Repair of prior service or installation.
  a('a'),

  /// Display: Temporary service or installation
  /// Definition: Temporary service or installation.
  b('b'),

  /// Display: TMJ treatment
  /// Definition: Treatment associated with TMJ.
  c('c'),

  /// Display: Implant or associated with an implant
  /// Definition: Implant or associated with an implant.
  e('e'),

  /// Display: Rush or Outside of office hours
  /// Definition: A Rush service or service performed outside of normal office hours.
  rooh('rooh'),

  /// Display: None
  /// Definition: None.
  x('x'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ModifierTypeCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ModifierTypeCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ModifierTypeCodes.elementOnly.withElement(element);
    }
    return ModifierTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ModifierTypeCodes withElement(Element? newElement) {
    return ModifierTypeCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
