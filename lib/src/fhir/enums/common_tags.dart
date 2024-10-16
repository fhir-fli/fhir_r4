import 'package:fhir_r4/fhir_r4.dart';

/// Common Tag Codes defined by FHIR project
enum CommonTags {
  /// Display: Actionable
  /// Definition: This request is intended to be acted upon, not merely stored
  actionable('actionable'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const CommonTags(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static CommonTags fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommonTags.elementOnly.withElement(element);
    }
    return CommonTags.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  CommonTags withElement(Element? newElement) {
    return CommonTags.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
