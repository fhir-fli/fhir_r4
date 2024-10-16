import 'package:fhir_r4/fhir_r4.dart';

/// Identifies the style of unique identifier used to identify a namespace.
enum NamingSystemIdentifierType {
  /// Display: OID
  /// Definition: An ISO object identifier; e.g. 1.2.3.4.5.
  oid('oid'),

  /// Display: UUID
  /// Definition: A universally unique identifier of the form a5afddf4-e880-459b-876e-e4591b0acc11.
  uuid('uuid'),

  /// Display: URI
  /// Definition: A uniform resource identifier (ideally a URL - uniform resource locator); e.g. http://unitsofmeasure.org.
  uri('uri'),

  /// Display: Other
  /// Definition: Some other type of unique identifier; e.g. HL7-assigned reserved string such as LN for LOINC.
  other('other'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const NamingSystemIdentifierType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static NamingSystemIdentifierType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NamingSystemIdentifierType.elementOnly.withElement(element);
    }
    return NamingSystemIdentifierType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  NamingSystemIdentifierType withElement(Element? newElement) {
    return NamingSystemIdentifierType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
