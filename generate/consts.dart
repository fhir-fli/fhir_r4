const String fhirSchemaPath = './definitions.json/fhir.schema.json';
const String valueSetPath = './definitions.json/valuesets.json';
const String searchParametersPath = './definitions.json/search-parameters.json';
const String searchesPath = '../$codeDirectory/fhir_at_rest/searches';
const String definitionsPathZip = './definitions.json.zip';
const String definitionsPath = './definitions.json';
const String examplesPathZip = './examples-json.zip';
const String examplesPath = './examples-json';
const String ndJsonExamplesPathZip = './examples-ndjson.zip';
const String ndJsonExamplesPath = './examples-ndjson';
const String schemaPathZip = './definitions.json/fhir.schema.json.zip';
const String testPath = '../test/fhir/examples';
const String resourceProfilesPath =
    './definitions.json/profiles-resources.json';
const String typeProfilesPath = './definitions.json/profiles-types.json';
const String fhirVersion = 'fhir_r4';
const String fhirResourceType = 'R4ResourceType';
const String fhirDirectory = '$codeDirectory/fhir';
const String codeDirectory = '../lib/src';
const List<String> classNamesAdjusted = <String>['List', 'Endpoint', 'Group'];
const List<String> ignoredClasses = <String>['ExampleScenario_Instance'];
const List<String> directories = <String>[
  'data_types',
  'resource_types',
  'enums'
];
