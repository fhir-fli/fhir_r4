import 'package:fhir_r4/fhir_r4.dart';

/// The gender of a person used for administrative purposes.
enum AdministrativeGender {
  /// Display: Male
  /// Definition: Male.
  male('male'),

  /// Display: Female
  /// Definition: Female.
  female('female'),

  /// Display: Other
  /// Definition: Other.
  other('other'),

  /// Display: Unknown
  /// Definition: Unknown.
  unknown('unknown'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const AdministrativeGender(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static AdministrativeGender fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdministrativeGender.elementOnly.withElement(element);
    }
    return AdministrativeGender.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  AdministrativeGender withElement(Element? newElement) {
    return AdministrativeGender.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
