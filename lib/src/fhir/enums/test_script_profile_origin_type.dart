/// This value set defines a set of codes that are used to indicate the profile type of a test system when acting as the origin within a TestScript.
enum TestScriptProfileOriginType {
  /// Display: FHIR Client
  /// Definition: General FHIR client used to initiate operations against a FHIR server.
  FHIR_Client,

  /// Display: FHIR SDC FormFiller
  /// Definition: A FHIR client acting as a Structured Data Capture Form Filler.
  FHIR_SDC_FormFiller,
  ;

  @override
  String toString() {
    switch (this) {
      case FHIR_Client:
        return 'FHIR-Client';
      case FHIR_SDC_FormFiller:
        return 'FHIR-SDC-FormFiller';
    }
  }

  /// Returns a [String] from a [TestScriptProfileOriginType] enum.
  String toJson() => toString();

  /// Returns a [TestScriptProfileOriginType] from a [String] enum.
  static TestScriptProfileOriginType fromString(String str) {
    switch (str) {
      case 'FHIR-Client':
        return TestScriptProfileOriginType.FHIR_Client;
      case 'FHIR-SDC-FormFiller':
        return TestScriptProfileOriginType.FHIR_SDC_FormFiller;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [TestScriptProfileOriginType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static TestScriptProfileOriginType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
