/// The type of participant.
enum TestReportParticipantType {
  /// Display: Test Engine
  /// Definition: The test execution engine.
  test_engine,

  /// Display: Client
  /// Definition: A FHIR Client.
  client,

  /// Display: Server
  /// Definition: A FHIR Server.
  server,
  ;

  @override
  String toString() {
    switch (this) {
      case test_engine:
        return 'test-engine';
      case client:
        return 'client';
      case server:
        return 'server';
    }
  }

  String toJson() => toString();
  static TestReportParticipantType fromString(String str) {
    switch (str) {
      case 'test-engine':
        return TestReportParticipantType.test_engine;
      case 'client':
        return TestReportParticipantType.client;
      case 'server':
        return TestReportParticipantType.server;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static TestReportParticipantType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
