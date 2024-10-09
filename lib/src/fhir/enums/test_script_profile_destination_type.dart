/// This value set defines a set of codes that are used to indicate the profile type of a test system when acting as the destination within a TestScript.
enum TestScriptProfileDestinationType {
  /// Display: FHIR Server
  /// Definition: General FHIR server used to respond to operations sent from a FHIR client.
  FHIR_Server,

  /// Display: FHIR SDC FormManager
  /// Definition: A FHIR server acting as a Structured Data Capture Form Manager.
  FHIR_SDC_FormManager,

  /// Display: FHIR SDC FormProcessor
  /// Definition: A FHIR server acting as a Structured Data Capture Form Processor.
  FHIR_SDC_FormProcessor,

  /// Display: FHIR SDC FormReceiver
  /// Definition: A FHIR server acting as a Structured Data Capture Form Receiver.
  FHIR_SDC_FormReceiver,
  ;

  @override
  String toString() {
    switch (this) {
      case FHIR_Server:
        return 'FHIR-Server';
      case FHIR_SDC_FormManager:
        return 'FHIR-SDC-FormManager';
      case FHIR_SDC_FormProcessor:
        return 'FHIR-SDC-FormProcessor';
      case FHIR_SDC_FormReceiver:
        return 'FHIR-SDC-FormReceiver';
    }
  }

  String toJson() => toString();
  static TestScriptProfileDestinationType fromString(String str) {
    switch (str) {
      case 'FHIR-Server':
        return TestScriptProfileDestinationType.FHIR_Server;
      case 'FHIR-SDC-FormManager':
        return TestScriptProfileDestinationType.FHIR_SDC_FormManager;
      case 'FHIR-SDC-FormProcessor':
        return TestScriptProfileDestinationType.FHIR_SDC_FormProcessor;
      case 'FHIR-SDC-FormReceiver':
        return TestScriptProfileDestinationType.FHIR_SDC_FormReceiver;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static TestScriptProfileDestinationType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
