import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a smattering of Unit type codes.
enum UnitTypeCodes {
  /// Display: Individual
  /// Definition: A single individual
  individual('individual'),

  /// Display: Family
  /// Definition: A family, typically includes self, spouse(s) and children to a defined age
  family('family'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const UnitTypeCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static UnitTypeCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return UnitTypeCodes.elementOnly.withElement(element);
    }
    return UnitTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  UnitTypeCodes withElement(Element? newElement) {
    return UnitTypeCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
