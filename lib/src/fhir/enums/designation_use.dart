import 'package:fhir_r4/fhir_r4.dart';

/// Details of how a designation would be used
enum DesignationUse {
  /// Display:
  /// Definition:
  value900000000000003001('900000000000003001'),

  /// Display:
  /// Definition:
  value900000000000013009('900000000000013009'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const DesignationUse(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static DesignationUse fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DesignationUse.elementOnly.withElement(element);
    }
    return DesignationUse.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  DesignationUse withElement(Element? newElement) {
    return DesignationUse.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
