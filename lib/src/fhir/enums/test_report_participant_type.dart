import 'package:fhir_r4/fhir_r4.dart';

/// The type of participant.
enum TestReportParticipantType {
  /// Display: Test Engine
  /// Definition: The test execution engine.
  test_engine('test-engine'),

  /// Display: Client
  /// Definition: A FHIR Client.
  client('client'),

  /// Display: Server
  /// Definition: A FHIR Server.
  server('server'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const TestReportParticipantType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static TestReportParticipantType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestReportParticipantType.elementOnly.withElement(element);
    }
    return TestReportParticipantType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  TestReportParticipantType withElement(Element? newElement) {
    return TestReportParticipantType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
