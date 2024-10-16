import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that are used to indicate the profile type of a test system when acting as the origin within a TestScript.
enum TestScriptProfileOriginType {
  /// Display: FHIR Client
  /// Definition: General FHIR client used to initiate operations against a FHIR server.
  FHIR_Client('FHIR-Client'),

  /// Display: FHIR SDC FormFiller
  /// Definition: A FHIR client acting as a Structured Data Capture Form Filler.
  FHIR_SDC_FormFiller('FHIR-SDC-FormFiller'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const TestScriptProfileOriginType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static TestScriptProfileOriginType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestScriptProfileOriginType.elementOnly.withElement(element);
    }
    return TestScriptProfileOriginType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  TestScriptProfileOriginType withElement(Element? newElement) {
    return TestScriptProfileOriginType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
