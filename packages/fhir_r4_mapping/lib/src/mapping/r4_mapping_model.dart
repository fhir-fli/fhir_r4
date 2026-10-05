import 'package:fhir_node/fhir_node.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_mapping/fhir_r4_mapping.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';

/// R4B for the shared mapping engine: its generated builders, its fhir_path
/// binding, and the R4B spellings of StructureMap and ConceptMap (the
/// [MappingModel] defaults: `contextType`, `dependent.variable`,
/// `defaultValueString`, `equivalence`, `typeMode` `none`).
class R4MappingModel extends MappingModel<Resource> {
  /// The model.
  const R4MappingModel();

  @override
  String get fhirVersion => '4.3.0';

  @override
  Set<String> get resourceTypeNames => R4ResourceType.typesAsStrings.toSet();

  @override
  Resource fromJson(Map<String, dynamic> json) => Resource.fromJson(json);

  @override
  Map<String, dynamic> toJson(Resource resource) => resource.toJson();

  @override
  FhirModelBinding get pathBinding => const R4ModelBinding();

  @override
  FhirBaseBuilder? createBuilder(String typeName) => emptyFromType(typeName);

  @override
  FhirBaseBuilder toBuilder(FhirNode node) => (node as FhirBase).toBuilder;

  @override
  FhirBaseBuilder primitive(String typeName, Object value) {
    // `string`, `FhirString`, `FhirStringBuilder`, `fhirstring`: the
    // spellings typeByElementName and the map language use.
    var t = typeName.toLowerCase();
    if (t.endsWith('builder')) t = t.substring(0, t.length - 'builder'.length);
    if (t.startsWith('fhir')) t = t.substring('fhir'.length);
    return switch (t) {
      'base64binary' => FhirBase64BinaryBuilder(value),
      'boolean' => FhirBooleanBuilder(value),
      'canonical' => FhirCanonicalBuilder(value),
      'code' => FhirCodeBuilder(value),
      'date' => FhirDateBuilder.fromString(value.toString()),
      'datetime' => FhirDateTimeBuilder.fromString(value.toString()),
      'decimal' => FhirDecimalBuilder(value),
      'id' => FhirIdBuilder(value),
      'instant' => FhirInstantBuilder.fromString(value.toString()),
      'integer' => FhirIntegerBuilder(value),
      'markdown' => FhirMarkdownBuilder(value),
      'oid' => FhirOidBuilder(value),
      'positiveint' => FhirPositiveIntBuilder(value),
      'string' => FhirStringBuilder(value),
      'time' => FhirTimeBuilder(value),
      'unsignedint' => FhirUnsignedIntBuilder(value),
      'uri' => FhirUriBuilder(value),
      'url' => FhirUrlBuilder(value),
      'uuid' => FhirUuidBuilder(value),
      _ => throw ArgumentError.value(typeName, 'typeName', 'not a primitive'),
    };
  }
}
