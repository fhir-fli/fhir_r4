import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that are used to indicate the profile type of a test system when acting as the destination within a TestScript.
enum TestScriptProfileDestinationType {
  /// Display: FHIR Server
  /// Definition: General FHIR server used to respond to operations sent from a FHIR client.
  FHIR_Server('FHIR-Server'),

  /// Display: FHIR SDC FormManager
  /// Definition: A FHIR server acting as a Structured Data Capture Form Manager.
  FHIR_SDC_FormManager('FHIR-SDC-FormManager'),

  /// Display: FHIR SDC FormProcessor
  /// Definition: A FHIR server acting as a Structured Data Capture Form Processor.
  FHIR_SDC_FormProcessor('FHIR-SDC-FormProcessor'),

  /// Display: FHIR SDC FormReceiver
  /// Definition: A FHIR server acting as a Structured Data Capture Form Receiver.
  FHIR_SDC_FormReceiver('FHIR-SDC-FormReceiver'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const TestScriptProfileDestinationType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static TestScriptProfileDestinationType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestScriptProfileDestinationType.elementOnly.withElement(element);
    }
    return TestScriptProfileDestinationType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  TestScriptProfileDestinationType withElement(Element? newElement) {
    return TestScriptProfileDestinationType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
