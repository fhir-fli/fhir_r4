import 'package:json_annotation/json_annotation.dart';

/// The type of participant.
enum TestReportParticipantType {
  /// Display: Test Engine
  /// Definition: The test execution engine.
  @JsonValue('test-engine')
  test_engine,
  /// Display: Client
  /// Definition: A FHIR Client.
  @JsonValue('client')
  client,
  /// Display: Server
  /// Definition: A FHIR Server.
  @JsonValue('server')
  server,
;

@override
  String toString() {
      switch(this) {
        case test_engine: return 'test-engine';
        case client: return 'client';
        case server: return 'server';
      }
      }
String toJson() => toString();
  TestReportParticipantType fromString(String str) {
    switch(str) {
      case 'test-engine': return TestReportParticipantType.test_engine;
      case 'client': return TestReportParticipantType.client;
      case 'server': return TestReportParticipantType.server;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 TestReportParticipantType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

