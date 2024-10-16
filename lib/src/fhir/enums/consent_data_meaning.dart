import 'package:fhir_r4/fhir_r4.dart';

/// How a resource reference is interpreted when testing consent restrictions.
enum ConsentDataMeaning {
  /// Display: Instance
  /// Definition: The consent applies directly to the instance of the resource.
  instance('instance'),

  /// Display: Related
  /// Definition: The consent applies directly to the instance of the resource and instances it refers to.
  related('related'),

  /// Display: Dependents
  /// Definition: The consent applies directly to the instance of the resource and instances that refer to it.
  dependents('dependents'),

  /// Display: AuthoredBy
  /// Definition: The consent applies to instances of resources that are authored by.
  authoredby('authoredby'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ConsentDataMeaning(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ConsentDataMeaning fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentDataMeaning.elementOnly.withElement(element);
    }
    return ConsentDataMeaning.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ConsentDataMeaning withElement(Element? newElement) {
    return ConsentDataMeaning.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
