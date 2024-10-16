import 'package:fhir_r4/fhir_r4.dart';

/// Identifies the purpose of the naming system.
enum NamingSystemType {
  /// Display: Code System
  /// Definition: The naming system is used to define concepts and symbols to represent those concepts; e.g. UCUM, LOINC, NDC code, local lab codes, etc.
  codesystem('codesystem'),

  /// Display: Identifier
  /// Definition: The naming system is used to manage identifiers (e.g. license numbers, order numbers, etc.).
  identifier('identifier'),

  /// Display: Root
  /// Definition: The naming system is used as the root for other identifiers and naming systems.
  root('root'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const NamingSystemType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static NamingSystemType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NamingSystemType.elementOnly.withElement(element);
    }
    return NamingSystemType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  NamingSystemType withElement(Element? newElement) {
    return NamingSystemType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
