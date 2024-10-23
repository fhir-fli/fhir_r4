import 'package:fhir_r4/fhir_r4.dart';

/// Extensions on [String] to provide additional functionality.
extension FhirStringExtensions on String {
  /// Returns `true` if the [String] is a valid [R4ResourceType].
  bool get isFhirPrimitive => const {
        'base64binary',
        'fhirbase64binary',
        'fhir.base64binary',
        'bool',
        'boolean',
        'fhirboolean',
        'fhir.boolean',
        'canonical',
        'code',
        'fhircode',
        'fhir.code',
        'date',
        'fhirdate',
        'fhir.date',
        'datetime',
        'fhirdatetime',
        'fhir.datetime',
        'double',
        'decimal',
        'fhirdecimal',
        'fhir.decimal',
        'num',
        'id',
        'instant',
        'int',
        'integer',
        'fhirinteger',
        'fhir.integer',
        'integer64',
        'markdown',
        'oid',
        'positiveint',
        'string',
        'fhirstring',
        'fhir.string',
        'time',
        'fhirtime',
        'fhir.time',
        'unsignedint',
        'uri',
        'fhiruri',
        'fhir.uri',
        'url',
        'uuid',
      }.contains(toLowerCase());

  /// Returns `true` if the [String] is a valid [R4ResourceType].
  bool get isFhirResourceType =>
      R4ResourceType.typesAsStrings.contains(this) ||
      toLowerCase().contains('tright') ||
      toLowerCase().contains('tleft');

  /// Returns `true` if the [String] is a valid [R4ResourceType].
  bool get isBackboneElement => this == 'BackboneElement';
}

/// Extensions on [String] to provide additional functionality.
extension ExtensionsForFhirString on FhirString {
  /// Returns `true` if the [String] is a valid [R4ResourceType].
  bool get isFhirPrimitive => value?.isFhirPrimitive ?? false;

  /// Returns `true` if the [String] is a valid [R4ResourceType].
  bool get isFhirResourceType =>
      value != null &&
      (R4ResourceType.typesAsStrings.contains(value) ||
          value!.toLowerCase().contains('tright') ||
          value!.toLowerCase().contains('tleft'));

  /// Returns `true` if the [String] is a valid [R4ResourceType].
  bool get isBackboneElement => value == 'BackboneElement';
}
